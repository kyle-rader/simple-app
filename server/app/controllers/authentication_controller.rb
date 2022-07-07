class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request

    def login
        @user = User.find_by_email(params[:email])
        if @user&.authenticate(params[:password])
            token = jwt_encode(user_id: @user.id, user_email: @user.email, user_name: @user.name)
            render json: { token: token }, status: :ok
        else
            render json: { error: 'unauthorized' }, status: :unauthorized
        end
    end
end

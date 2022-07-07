class ApplicationController < ActionController::API
    include JsonWebToken

    before_action :authenticate_request, except: [:status]

    def status
        render json: { status: 'online' }, status: :ok
    end

    private
    
    def authenticate_request
        header = request.headers["Authorization"]
        header = header.split(" ").last if header
        decoded = jwt_decode(header) if header
        unless decoded
            render json: { error: "unauthorized" }, status: :unauthorized
        else
            @current_user = User.find(decoded[:user_id])
        end
    end
end

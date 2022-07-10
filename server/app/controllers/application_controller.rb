class ApplicationController < ActionController::API
    def status
        render json: { status: 'online' }, status: :ok
    end
end

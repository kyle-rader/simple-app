class ApplicationController < ActionController::Base
    def index
        if rodauth.logged_in?
            @inertia_app = 'main'
            puts "Current account is #{current_account.email}"
            
            render inertia: 'main/index', props: {
                user: current_account.email
            }
        elsif
            render template: 'index'
        end
    end

    def privacy
        render template: 'privacy'
    end

    private

    def authenticate
        rodauth.require_authentication # redirect to login page if not authenticated
    end
end

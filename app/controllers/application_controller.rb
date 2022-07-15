class ApplicationController < ActionController::Base
    def index
        render template: 'index'
    end

    def privacy
        render template: 'privacy'
    end
end

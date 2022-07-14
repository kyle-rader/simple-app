class ApplicationController < ActionController::Base
    def index
        render inertia: 'home/index'
    end
end

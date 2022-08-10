class ChatController < ApplicationController
    before_action :authenticate

    def index
        @inertia_app = 'main'
        render inertia: 'chat/index', props: { user: current_account.email.split('@')[0] }
    end
end

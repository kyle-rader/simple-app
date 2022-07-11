require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
    it "reports status" do
        expected = { :status => "online" }.to_json
        get :status
        expect(response.body).to eq(expected)
    end
end

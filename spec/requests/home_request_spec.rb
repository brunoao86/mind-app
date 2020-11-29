require 'rails_helper'

RSpec.describe "Homes", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/home"
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(new_user_session_path)
    end
  end

end

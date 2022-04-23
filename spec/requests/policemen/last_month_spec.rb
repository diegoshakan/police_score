require 'rails_helper'

RSpec.describe "Policemen::LastMonths", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/policemen/last_month/index"
      expect(response).to have_http_status(:success)
    end
  end

end

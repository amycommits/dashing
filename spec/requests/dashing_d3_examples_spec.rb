require 'rails_helper'

RSpec.describe "DashingD3Examples", type: :request do
  describe "GET /dashing_d3_examples" do
    it "works! (now write some real specs)" do
      get dashing_d3_examples_path
      expect(response).to have_http_status(200)
    end
  end
end

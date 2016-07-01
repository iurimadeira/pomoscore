require 'rails_helper'

RSpec.describe "Pomodoros", :type => :request do
  describe "GET /pomodoros" do
    it "works! (now write some real specs)" do
      get pomodoros_path
      expect(response).to have_http_status(200)
    end
  end
end

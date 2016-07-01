require "rails_helper"

RSpec.describe PomodorosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pomodoros").to route_to("pomodoros#index")
    end

    it "routes to #new" do
      expect(:get => "/pomodoros/new").to route_to("pomodoros#new")
    end

    it "routes to #show" do
      expect(:get => "/pomodoros/1").to route_to("pomodoros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pomodoros/1/edit").to route_to("pomodoros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pomodoros").to route_to("pomodoros#create")
    end

    it "routes to #update" do
      expect(:put => "/pomodoros/1").to route_to("pomodoros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pomodoros/1").to route_to("pomodoros#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe DashingD3ExamplesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashing_d3_examples").to route_to("dashing_d3_examples#index")
    end

    it "routes to #new" do
      expect(:get => "/dashing_d3_examples/new").to route_to("dashing_d3_examples#new")
    end

    it "routes to #show" do
      expect(:get => "/dashing_d3_examples/1").to route_to("dashing_d3_examples#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashing_d3_examples/1/edit").to route_to("dashing_d3_examples#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashing_d3_examples").to route_to("dashing_d3_examples#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashing_d3_examples/1").to route_to("dashing_d3_examples#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashing_d3_examples/1").to route_to("dashing_d3_examples#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashing_d3_examples/1").to route_to("dashing_d3_examples#destroy", :id => "1")
    end

  end
end

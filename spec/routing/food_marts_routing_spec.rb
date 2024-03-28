require "rails_helper"

RSpec.describe FoodMartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/food_marts").to route_to("food_marts#index")
    end

    it "routes to #show" do
      expect(get: "/food_marts/1").to route_to("food_marts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/food_marts").to route_to("food_marts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/food_marts/1").to route_to("food_marts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/food_marts/1").to route_to("food_marts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/food_marts/1").to route_to("food_marts#destroy", id: "1")
    end
  end
end

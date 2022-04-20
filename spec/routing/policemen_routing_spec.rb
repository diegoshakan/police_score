require "rails_helper"

RSpec.describe PolicemenController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/policemen").to route_to("policemen#index")
    end

    it "routes to #new" do
      expect(get: "/policemen/new").to route_to("policemen#new")
    end

    it "routes to #show" do
      expect(get: "/policemen/1").to route_to("policemen#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/policemen/1/edit").to route_to("policemen#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/policemen").to route_to("policemen#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/policemen/1").to route_to("policemen#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/policemen/1").to route_to("policemen#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/policemen/1").to route_to("policemen#destroy", id: "1")
    end
  end
end

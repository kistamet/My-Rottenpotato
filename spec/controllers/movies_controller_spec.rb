require 'rails_helper'
require 'date'
RSpec.describe MoviesController, type: :controller do
  describe 'check rotues of search_tmdb' do
    it 'calls the model method that performs TMDB search' do
      route_to("movies#search_tmdb", :search_terms => "total")
    end
    it "routes to #index" do
        expect(get:"/movies").to route_to("movies#index")
    end

    it "routes to #create" do
        expect(post:"/movies").to route_to("movies#create")
    end
  end
end




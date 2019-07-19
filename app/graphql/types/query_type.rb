module Types
  class QueryType < Types::BaseObject
    field :all_breweries, [BreweryType], null: true, description: "Returns a list of all Breweries"
	
    field :brewery, BreweryType, null: true do
      description "Returns brewery given an ID"
      argument :id, ID, required: true
    end

    def all_breweries
      Brewery.all
    end

    def brewery(id:)
      Brewery.find_by(id: id)
    end	
  end
end

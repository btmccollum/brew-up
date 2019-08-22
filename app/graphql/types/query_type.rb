module Types
  class QueryType < Types::BaseObject
    field :all_breweries, [BreweryType], null: true, description: "Returns a list of all Breweries"
    field :all_beers, [BeerType], null: true, description: "Returns a list of all beers"
	
    field :brewery, BreweryType, null: true do
      description "Returns brewery given an ID"
      argument :id, ID, required: true
    end

    field :beer, BeerType, null:true do
      description 'Returns beer given an ID'
      argument :id, ID, required: true
    end

    def all_breweries
      Brewery.all
    end

    def brewery(id:)
      Brewery.find_by(id: id)
    end

    def all_breweries
      Beer.all
    end

    def beer(id:)
      Beer.find_by(id: id)
    end
  end
end

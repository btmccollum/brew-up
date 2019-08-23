module Types
  class QueryType < Types::BaseObject
    field :brewery, BreweryType,              null: true do
      description "Returns brewery from ID"
      argument :id, ID,                       required: true
    end

    field :beer, BeerType,                    null: true do
      description 'Returns beer from ID'
      argument :id, ID,                       required: true
    end

    field :all_breweries, [BreweryType],      null: true, description: "Returns a list of all Breweries"
    field :all_beers, [BeerType],             null: true, description: "Returns a list of all beers"

    def all_breweries
      Brewery.all
    end

    def brewery(id:)
      Brewery.find(id)
    end

    def all_beers
      Beer.all
    end

    def beer(id:)
      Beer.find(id)
    end
  end
end

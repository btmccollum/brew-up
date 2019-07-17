module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :allBreweries do
      type types[Types::BreweryType]
      description "A list of all of the breweries"

      resolve -> (obj, args, ctx) { Brewery.all }

    field :brewery do
      type Types::BreweryType
      description "Return a brewery"
      argument :id, !types.ID
      resolve -> (obj, args, ctx) { Brewery.find(args[:id]) }
    end
  end
end

module Types
  class BreweryType < Types::BaseObject
    graphql_name "BreweryType"

    field :id, !types.ID
    field :name, !types.String
  end
end

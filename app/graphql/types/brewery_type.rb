module Types
  class BreweryType < Types::BaseObject
    graphql_name 'BreweryType'

    field :id, ID, null: false
    field :name, String, null:false
  end
end

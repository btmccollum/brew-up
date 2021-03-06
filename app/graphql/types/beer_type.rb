module Types
  class BeerType < Types::BaseObject
    graphql_name 'BeerType'
    description 'a beer'

    field :id, ID,                  null: false
    field :brewery_id, BreweryType, null: false
    field :name, String,            null: false
    field :style, String,           null: false
    field :abv, Float,              null: false
    field :ibu, Float,              null: false
    field :description, String,     null: false
    field :rating_score, Float,     null: false
    field :rating_count, Int,       null: false
  end
end

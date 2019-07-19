module Types
  class BreweryType < Types::BaseObject
    graphql_name 'BreweryType'

    field :id, ID, null: true
    field :name, String, null: false
    field :latitude, Float, null: false
    field :longitude, Float, null: false
    field :beer_count, Integer, null: false
    field :address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :country, String, null: false
    field :rating, Float, null: false
    field :review_count, Float, null: false
  end
end

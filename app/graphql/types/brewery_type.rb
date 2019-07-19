module Types
  class BreweryType < Types::BaseObject
    graphql_name 'BreweryType'

    field :id, ID, null: true
    field :name, String, null: false
    field :latitude, Float, null: true
    field :longitude, Float, null: true
    field :beer_count, Integer, null: true
    field :address, String, null: true
    field :city, String, null: true
    field :state, String, null: true
    field :country, String, null: true
    field :rating, Float, null: true
    field :review_count, Float, null: true
  end
end

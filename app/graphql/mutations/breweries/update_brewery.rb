module Mutations
  module Breweries
    class UpdateBrewery < Mutations::BaseMutation
      graphql_name 'UpdateBrewery'

      field :brewery, Types::BreweryType, null: true
      field :result, Boolean, null: true

      argument :id, ID, required: true
      argument :name, String, required: false
      argument :latitude, Float, required: false
      argument :longitude, Float, required: false
      argument :beer_count, Integer, required: false
      argument :address, String, required: false
      argument :city, String, required: false
      argument :state, String, required: false
      argument :country, String, required: false
      argument :rating, Float, required: false
      argument :review_count, Float, required: false

      def resolve(**args)
        brewery = Brewery.find(args[:id])
        brewery.update(
          name: args[:name],
          latitude: args[:latitude],
          longitude: args[:longitude],
          beer_count: args[:beer_count].to_i,
          address: args[:address],
          city: args[:city],
          state: args[:state],
          country: args[:country],
          rating: args[:rating],
          review_count: args[:review_count]
        )
        { 
          brewery: brewery,
          result: brewery.errors.blank?
        }
      end
    end
  end
end

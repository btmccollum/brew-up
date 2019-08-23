module Mutations
  module Breweries
    class CreateBrewery < Mutations::BaseMutation
      graphql_name 'CreateBrewery'

      field :brewery, Types::BreweryType, null: false
      field :result, Boolean,             null: true

      argument :name, String,             required: true
      argument :latitude, Float,          required: false
      argument :longitude, Float,         required: false
      argument :beer_count, Int,          required: false
      argument :address, String,          required: false
      argument :city, String,             required: false
      argument :state, String,            required: false
      argument :country, String,          required: false
      argument :rating, Float,            required: false
      argument :review_count, Float,      required: false

      def resolve(**args)
        brewery = Brewery.create(
          name:         args[:name],
          latitude:     args[:latitude],
          longitude:    args[:longitude],
          beer_count:   args[:beer_count],
          address:      args[:address],
          city:         args[:city],
          state:        args[:state],
          country:      args[:country],
          rating:       args[:rating],
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

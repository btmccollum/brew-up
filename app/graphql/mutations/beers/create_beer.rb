module Mutations
  module Beers
    class CreateBeer < Mutations::BaseMutation
      graphql_name 'CreateBeer'

      field :beer, Types::BeerType,     null: false
      field :result, Boolean,           null: false

      argument :name, String,           required: true
      argument :style, String,          required: false
      argument :abv, Float,             required: false
      argument :ibu, Float,             required: false
      argument :description, String,    required: false
      argument :rating_score, Float,    required: false
      argument :rating_count, Integer,  required: false
      argument :brewery_id, Integer,    required: false

      def resolve(**args)
        beer = Beer.create(
          name: args[:name],
          brewery_id: args[:brewery_id],
          style: args[:style],
          abv: args[:abv],
          ibu: args[:ibu],
          description: args[:description],
          rating_score: args[:rating_score],
          rating_count: args[:rating_count],
        )
        {
          beer: beer,
          result: beer.errors.blank?
        }
      end
    end
  end
end

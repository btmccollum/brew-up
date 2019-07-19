require 'rails_helper'

module Mutations
  module Breweries
    RSpec.describe UpdateBrewery, type: :request do
      describe '.resolve' do 
        before do
          @brewery = Brewery.create(name: "DAWN Brewing")
        end

        let(:brew_query){ 
          <<~GQL
            mutation {
            updateBrewery(
              input:{
                id: 3
                name: "DAWN Brewing"
                beerCount: 26
              }
            ){
              brewery {
                id
                name
                beerCount
              }
            }}
          GQL
        }

        let(:test_brewery){ Brewery.create(name: 'Turning Point Brewing Co.') }

        it 'updates a brewery correctly' do
          post '/graphql', params: { query: brew_query }
          updated_brewery = Brewery.last

          expect(Brewery.count).to eq(1)
          expect(updated_brewery).to have_attributes(
            'name' => updated_brewery.name,
            'beer_count' => 26
          )
        end
      end
    end
  end
end

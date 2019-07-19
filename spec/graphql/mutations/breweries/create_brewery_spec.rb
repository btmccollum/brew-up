require 'rails_helper'

module Mutations
  module Breweries
    RSpec.describe CreateBrewery, type: :request do
      describe '.resolve' do 
        let(:brew_query){ 'mutation {
            createBrewery(
              input:{
                name: "DAWN Brewing"
              }
            ){
              brewery{
                id
                name
              }
            }
          }'
        }
        let(:test_brewery){ Brewery.create(name: "Turning Point Brewing Co.") }

        it 'instantiates a brewery' do

          post '/graphql', params: { query: brew_query }

          expect(Brewery.count).to eq(1)
          expect(Brewery.last.name).to eq("DAWN Brewing")
        end

        it 'returns a brewery' do 
          post '/graphql', params: { query: brew_query }
          results = JSON.parse(response.body)
          id = results['data']['createBrewery']['brewery']['id']
          expect(id.to_i).to eq(Brewery.last.id)
        end
      end
    end
  end
end

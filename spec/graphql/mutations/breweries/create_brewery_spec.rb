require 'rails_helper'

module Mutations
  module Breweries
    RSpec.describe CreateBrewery, type: :request do
      describe '.resolve' do 
        it 'instantiates a brewery' do
          brew_query ='mutation {
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

          post '/graphql', params: { query: brew_query }

          expect(Brewery.count).to eq(1)
          expect(Brewery.last.name).to eq("DAWN Brewing")
        end
      end
  
      # it 'returns a book' do
      #   # author = create(:author)

      #   post '/graphql', params: { query: query(author_id: author.id) }
      #   json = JSON.parse(response.body)
      #   data = json['data']['createBook']

      #   expect(data).to include(
      #     'id'              => be_present,
      #     'title'           => 'Tripwire',
      #     'publicationDate' => 1999,
      #     'genre'           => 'Thriller',
      #     'author'          => { 'id' => author.id.to_s }
      #   )
      # end
    # end
    end
  end
end
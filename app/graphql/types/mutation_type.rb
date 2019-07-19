module Types
  class MutationType < Types::BaseObject
    field :createBrewery, mutation: Mutations::Breweries::CreateBrewery
    field :updateBrewery, mutation: Mutations::Breweries::UpdateBrewery
  end
end

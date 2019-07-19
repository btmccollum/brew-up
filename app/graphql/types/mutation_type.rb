module Types
  class MutationType < Types::BaseObject
    field :createBrewery, mutation: Mutations::Breweries::CreateBrewery
  end
end

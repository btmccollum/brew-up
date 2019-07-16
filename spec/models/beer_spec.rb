require 'rails_helper'

RSpec.describe Beer, type: :model do
  let(:test_beer) { Beer.new }

  it 'belongs to a brewery' do
    association = Beer.reflect_on_association(:brewery).macro
    expect(association).to eq(:belongs_to)
  end

  it 'should identify the brewery it belongs to' do
    brewery = Brewery.create(name: "DAWN Brewing")
    ninja = brewery.beers.create(name: "Ninja IPA")
    binding.pry
    expect(ninja).to be_valid
    expect(ninja.id).to eq(1)
    expect(ninja.brewery_id).to eq(brewery.id)
  end
end

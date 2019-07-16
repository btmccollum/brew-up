require 'rails_helper'

RSpec.describe Brewery, type: :model do
  let(:test_brewery) { Brewery.new(name: "DAWN Brewing") }

  it 'is valid when passed required attributes' do
    test_brewery.save
    expect(Brewery.all.count).to eq(1)
  end

  it 'is not valid when missing required attributes' do
    brewery = Brewery.new
    expect(brewery).not_to be_valid
  end

  it 'should require a valid name' do
    brewery = Brewery.new(name: 'Turning Point')
    expect(brewery).to be_valid
  end

  it 'should not allow a non-numerical latitude' do
    test_brewery.latitude = 'abc'
    test_brewery.save
    expect(test_brewery).not_to be_valid
  end

  it 'should not allow a non-numerical longitude' do
    test_brewery.longitude = 'abc'
    test_brewery.save
    expect(test_brewery).not_to be_valid
  end

  it 'should not allow a non-numerical beer_count' do
    test_brewery.beer_count = 'abc'
    test_brewery.save
    expect(test_brewery).not_to be_valid
  end

  it 'should not allow a non-numerical rating' do
    test_brewery.rating = 'abc'
    test_brewery.save
    expect(test_brewery).not_to be_valid
  end

  it 'should not allow a non-numerical review_count' do
    test_brewery.review_count = 'abc'
    test_brewery.save
    expect(test_brewery).not_to be_valid
  end

  it 'should have many beers' do
    association = Brewery.reflect_on_association(:beers).macro
    expect(association).to eq(:has_many)
  end
end

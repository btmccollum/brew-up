class Brewery < ApplicationRecord
  has_many  :beers

  validates :name,          presence: true
  validates :latitude,      numericality: true,
                            allow_nil: true
  validates :longitude,     numericality: true,
                            allow_nil: true
  validates :beer_count,    numericality: { only_integer: true },
                            allow_nil: true
  validates :rating,        numericality: true,
                            allow_nil: true
  validates :review_count,  numericality: true,
                            allow_nil: true
end

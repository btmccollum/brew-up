class Beer < ApplicationRecord
  belongs_to  :brewery,     foreign_key: 'brewery_id'

  # validates   :brewery_id,  presence: true
  validates   :name,        presence: true
end

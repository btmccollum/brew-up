class Beer < ApplicationRecord
  belongs_to :brewery, foreign_key: 'brewery_id'
end

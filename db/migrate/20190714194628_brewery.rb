class Brewery < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.integer :beer_count
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.decimal :rating
      t.decimal :review_count
    end
  end
end

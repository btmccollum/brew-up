class AddBreweryIdToBeer < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :brewery_id, :integer
  end
end

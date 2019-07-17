class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string      :name
      t.string      :style
      t.decimal     :abv
      t.integer     :ibu
      t.text        :description
      t.decimal     :rating_score
      t.decimal     :rating_count
      t.integer     :brewery_id
      t.timestamps
    end
  end
end

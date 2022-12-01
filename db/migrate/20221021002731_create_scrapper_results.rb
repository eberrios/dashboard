class CreateScrapperResults < ActiveRecord::Migration[6.1]
  def change
    create_table :scrapper_results do |t|
      t.integer :site_captures_id
      t.integer :scheduled_works_id
      t.string :brand
      t.text :name
      t.text :url
      t.string :price
      t.string :sale

      t.timestamps
    end
  end
end

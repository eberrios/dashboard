class AddScrapperResults < ActiveRecord::Migration[6.1]
  def change
    add_column :scrapper_results, :sku, :string
  end
end

class AddScrapperResultsGlosaToName < ActiveRecord::Migration[6.1]
  def change
    rename_column :scrapper_results, :glosa, :name
  end
end

class CreateSiteCaptures < ActiveRecord::Migration[6.1]
  def change
    create_table :site_captures do |t|
      t.string :name
      t.text :description
      t.text :url_site
      t.boolean :status_site

      t.timestamps
    end
  end
end

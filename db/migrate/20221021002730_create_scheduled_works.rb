class CreateScheduledWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :scheduled_works do |t|
      t.integer :site_captures_id
      t.datetime :date_time
      t.boolean :status_scheduled

      t.timestamps
    end
  end
end

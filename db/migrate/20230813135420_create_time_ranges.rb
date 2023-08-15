class CreateTimeRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :time_ranges do |t|
      t.time :time_in
      t.time :time_out
      t.integer :day_id

      t.timestamps
    end
  end
end

class CreateTimeHorizons < ActiveRecord::Migration
  def change
    create_table :time_horizons do |t|
      t.integer :year_a
      t.integer :year_b
      t.integer :year_c
      t.integer :year_d

      t.timestamps
    end
  end
end

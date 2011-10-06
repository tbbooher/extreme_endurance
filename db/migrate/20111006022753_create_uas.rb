class CreateUas < ActiveRecord::Migration
  def change
    create_table :uas do |t|
      t.string, :country
      t.string, :prime
      t.string, :designation
      t.string, :development
      t.string, :production
      t.string, :operation
      t.string, :propulsion
      t.integer, :gross_wt_kg
      t.integer, :payload_weight_kg
      t.integer, :wing_span_m
      t.integer, :endurance_hr
      t.integer, :range_km
      t.integer, :ceiling_m
      t.string :mission

      t.timestamps
    end
  end
end

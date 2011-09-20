class CreateSystems < ActiveRecord::Migration
  def self.up
    create_table :systems do |t|
      t.integer :max_speed
      t.integer :endurance
      t.integer :service_ceiling
      t.string :name
      t.integer :payload_lbs

      t.timestamps
    end
  end

  def self.down
    drop_table :systems
  end
end

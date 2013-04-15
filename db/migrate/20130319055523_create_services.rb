class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :parent_id
      t.string :name
      t.text :description
      t.integer :cost
      t.integer :specialty_id

      t.timestamps
    end
  end
end

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.integer :doctor_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

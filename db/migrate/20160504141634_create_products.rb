class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :category, index: true, foreign_key: true
      t.references :condition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

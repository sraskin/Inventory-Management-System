class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.text :description
      t.string :product_model
      t.string :maker_name
      t.string :product_serial
      t.string :quentity
      t.string :stock_location
      t.string :unit_value
      t.string :unit_size
      t.string :image
      t.boolean :approved

      t.timestamps null: false
    end
  end
end

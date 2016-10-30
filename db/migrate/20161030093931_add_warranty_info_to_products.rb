class AddWarrantyInfoToProducts < ActiveRecord::Migration
  def change
    add_column :products, :warranty_start, :string
    add_column :products, :warranty_end, :string
  end
end

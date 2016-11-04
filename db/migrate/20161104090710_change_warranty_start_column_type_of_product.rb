class ChangeWarrantyStartColumnTypeOfProduct < ActiveRecord::Migration
  def change
    remove_column :products, :warranty_start
    remove_column :products, :warranty_end

    add_column :products, :warranty_start, :date
    add_column :products, :warranty_end, :date
  end
end



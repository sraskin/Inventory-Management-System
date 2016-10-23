class ChangeColumn < ActiveRecord::Migration
  def change
    change_column_default :products, :approved, false
  end
end

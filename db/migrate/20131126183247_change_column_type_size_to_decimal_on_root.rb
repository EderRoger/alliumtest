class ChangeColumnTypeSizeToDecimalOnRoot < ActiveRecord::Migration
  def change
    change_column :roots, :size, :decimal, :precision => 2
  end
end

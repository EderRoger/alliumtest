class ChangeSizeSetScaleOnRoots < ActiveRecord::Migration
  def change
    change_column :roots, :size, :decimal, precision: 8, scale: 2
  end
end

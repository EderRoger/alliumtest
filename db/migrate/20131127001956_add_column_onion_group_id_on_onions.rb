class AddColumnOnionGroupIdOnOnions < ActiveRecord::Migration
  def change
    add_column :onions, :onion_group_id, :integer
  end
end

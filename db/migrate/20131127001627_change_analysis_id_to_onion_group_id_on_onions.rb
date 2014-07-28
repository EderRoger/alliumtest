class ChangeAnalysisIdToOnionGroupIdOnOnions < ActiveRecord::Migration
  def up
    remove_column :onions, :analysis_id
  end

  def down
    add_column :onions, :analysis_id, :integer
  end
end

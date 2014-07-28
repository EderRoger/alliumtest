class AddCollumnNameToRoots < ActiveRecord::Migration
  def change
    add_column :onions, :name, :string
  end
end

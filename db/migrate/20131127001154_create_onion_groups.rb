class CreateOnionGroups < ActiveRecord::Migration
  def change
    create_table :onion_groups do |t|
      t.integer :analysis_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end

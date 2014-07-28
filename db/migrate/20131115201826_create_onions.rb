class CreateOnions < ActiveRecord::Migration
  def change
    create_table :onions do |t|
      t.text :description
      t.integer :analisys_id

      t.timestamps
    end
  end
end

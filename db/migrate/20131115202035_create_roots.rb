class CreateRoots < ActiveRecord::Migration
  def change
    create_table :roots do |t|
      t.integer :size
      t.integer :onion_id

      t.timestamps
    end
  end
end

class CreateRegisterExecutions < ActiveRecord::Migration
  def change
    create_table :register_executions do |t|
      t.integer :day_number
      t.integer :analisys_execution_id
      t.integer :onion_id

      t.timestamps
    end
  end
end

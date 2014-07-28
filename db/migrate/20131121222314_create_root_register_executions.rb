class CreateRootRegisterExecutions < ActiveRecord::Migration
  def change
    create_table :root_register_executions do |t|
      t.integer :register_execution_id
      t.integer :root_id

      t.timestamps
    end
  end
end

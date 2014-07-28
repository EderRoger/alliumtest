class ChangeRootSizeToDecimalOnRegisterExecution < ActiveRecord::Migration
  def change
    change_column :register_executions, :root_size, :decimal, :precision => 2
  end
end

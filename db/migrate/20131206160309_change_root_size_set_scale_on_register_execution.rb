class ChangeRootSizeSetScaleOnRegisterExecution < ActiveRecord::Migration
  def change
    change_column :register_executions, :root_size, :decimal, precision: 8, scale: 2
  end
end

class AddColumnRootSizeOnRegisterExecution < ActiveRecord::Migration
  def change
    add_column :register_executions, :root_size, :integer
  end
end

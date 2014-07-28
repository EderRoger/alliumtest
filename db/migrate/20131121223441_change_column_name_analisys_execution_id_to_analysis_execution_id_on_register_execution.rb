class ChangeColumnNameAnalisysExecutionIdToAnalysisExecutionIdOnRegisterExecution < ActiveRecord::Migration
  def change
    rename_column :register_executions, :analisys_execution_id, :analysis_execution_id
  end
end

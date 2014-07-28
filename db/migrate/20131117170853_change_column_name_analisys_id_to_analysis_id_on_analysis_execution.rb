class ChangeColumnNameAnalisysIdToAnalysisIdOnAnalysisExecution < ActiveRecord::Migration
  def change
    rename_column :analysis_executions, :analisys_id, :analysis_id
  end
end

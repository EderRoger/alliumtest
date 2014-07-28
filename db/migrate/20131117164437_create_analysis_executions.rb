class CreateAnalysisExecutions < ActiveRecord::Migration
  def change
    create_table :analysis_executions do |t|
      t.integer :duration
      t.integer :analisys_id

      t.timestamps
    end
  end
end

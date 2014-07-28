class ChangeOnionColumNameAnalisysIdToAnalysisId < ActiveRecord::Migration
  def self.up
    rename_column :onions, :analisys_id, :analysis_id
  end

end

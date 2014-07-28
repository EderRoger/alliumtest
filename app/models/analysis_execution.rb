class AnalysisExecution < ActiveRecord::Base

  belongs_to :analysis

  validates_presence_of :analysis_id

end

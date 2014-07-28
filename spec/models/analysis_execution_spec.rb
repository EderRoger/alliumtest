require 'spec_helper'

describe AnalysisExecution do

  it 'should have mandatory fields' do
    analysis = FactoryGirl.create(:analysis)
    analysis_exec = AnalysisExecution.new
    analysis_exec.analysis_id = analysis.id

    analysis_exec.should be_valid
  end


end

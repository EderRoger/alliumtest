require 'spec_helper'

describe OnionGroup do

  describe 'new Onion Group' do

    it 'should have analysis' do
      onion_group = OnionGroup.new
      analysis = FactoryGirl.create(:analysis)

      onion_group.analysis_id = analysis.id
      onion_group.analysis_id.should_not be_nil
    end

  end

end

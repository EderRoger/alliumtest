require 'spec_helper'

describe Analysis do

  describe 'new analysis'  do

    it 'must be have a description ' do
      analysis = Analysis.new
      analysis.description = 'Some description'
      analysis.description.should_not  be_empty
    end

  end

end

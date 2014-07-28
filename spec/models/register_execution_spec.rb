require 'spec_helper'

describe RegisterExecution do

  it 'must have mandatory fields' do

    onion = FactoryGirl.create(:onion)
    register_exec = RegisterExecution.new(:root_size => 3.4, :day_number => 1, :onion_id => onion.id )
    register_exec.should be_valid

  end

end

require 'spec_helper'

describe RootRegisterExecution do

  it 'should be valid' do

    root_reg_exec = RootRegisterExecution.new

    root_reg_exec.should be_valid

  end

end

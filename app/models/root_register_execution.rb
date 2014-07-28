class RootRegisterExecution < ActiveRecord::Base
  has_one :root
  has_one :register_execution
end

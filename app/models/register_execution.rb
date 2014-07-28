class RegisterExecution < ActiveRecord::Base

  attr_accessor :analysis_name, :onion_group_id, :analysis_id, :day, :onion_id_graphic

  has_one :onion
  belongs_to :analysis_execution

  validates_presence_of :root_size, :day_number, :onion_id

  def get_root_size(register_execution_id)
    root_id = RootRegisterExecution.find_by_register_execution_id(register_execution_id).root_id
    Root.find_by_id(root_id).size
  end

end

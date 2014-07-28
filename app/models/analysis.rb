class Analysis < ActiveRecord::Base
  validates_presence_of :description, :name

  has_many :onions
  has_one :analysis_execution

end

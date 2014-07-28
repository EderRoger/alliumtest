class OnionGroup < ActiveRecord::Base
  has_many :onions
  belongs_to :analysis

  validates_presence_of :analysis, :name

end

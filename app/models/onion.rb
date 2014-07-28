class Onion < ActiveRecord::Base

  belongs_to :onion_group
  has_many :roots

  validates_presence_of :description, :name, :onion_group_id

end

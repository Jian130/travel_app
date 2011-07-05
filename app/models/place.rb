# == Schema Information
# Schema version: 20110705080745
#
# Table name: places
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  vicinity      :string(255)
#  place_type_id :integer
#  lat           :decimal(, )
#  lng           :decimal(, )
#  created_at    :datetime
#  updated_at    :datetime
#

class Place < ActiveRecord::Base
  
  attr_accessible :name
  
  has_many :posts
  
end

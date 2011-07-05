# == Schema Information
# Schema version: 20110705080745
#
# Table name: place_types
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PlaceType < ActiveRecord::Base
  
  attr_accessible :type
  
  has_many :places
  
end

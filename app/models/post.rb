# == Schema Information
# Schema version: 20110705080745
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  photo      :string(255)
#  message    :string(255)
#  user_id    :integer
#  place_id   :integer
#  time       :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  
  attr_accessible :message
  
  #belongs_to :user
  has_many :photos
  
  #acts_as_taggable
  
  validates :message, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true
  
  #should use rate, add rate column to Post later
  default_scope :order => 'posts.time DESC'
  
end

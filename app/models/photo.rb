# == Schema Information
# Schema version: 20110707055925
#
# Table name: photos
#
#  id                 :integer         not null, primary key
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_content_size :integer
#  photo_updated_at   :datetime
#  photo_message      :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class Photo < ActiveRecord::Base
  
  attr_accessible :photo_message, :photo
  
  belongs_to :post
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "150x150>" }
end
# == Schema Information
# Schema version: 20110713080310
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  username               :string(255)
#  private                :boolean
#  score                  :integer
#  rank                   :integer
#  disable                :boolean
#  countries_count        :integer
#  cities_count           :integer
#  photos_count           :integer
#  followers_count        :integer
#  followings_count       :integer
#  last_activity          :string(255)
#  profile_id             :integer
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :private
  
  has_one :profile
  
  has_many :posts, :dependent => :destroy
  
  validates :username, :presence => true
  
  after_create :create_profile
  
  private
    
    def create_profile
      
    end
  
end

# == Schema Information
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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: profiles
#
#  id         :integer         not null, primary key
#  avatar_id  :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  hometown   :string(255)
#  locale     :string(255)
#  timezone   :string(255)
#  bio        :string(255)
#  web        :string(255)
#  facebook   :string(255)
#  twitter    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

require 'spec_helper'

describe Profile do
  pending "add some examples to (or delete) #{__FILE__}"
end

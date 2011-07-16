# == Schema Information
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

require 'spec_helper'

describe Post do
  pending "add some examples to (or delete) #{__FILE__}"
end

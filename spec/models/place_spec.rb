# == Schema Information
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

require 'spec_helper'

describe Place do
  pending "add some examples to (or delete) #{__FILE__}"
end

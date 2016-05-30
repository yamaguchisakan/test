# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  nicotin    :float            not null
#  tar        :float            not null
#  maker_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BrandTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

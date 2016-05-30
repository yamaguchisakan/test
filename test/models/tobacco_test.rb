# == Schema Information
#
# Table name: tobaccos
#
#  id         :integer          not null, primary key
#  account_id :integer          not null
#  brand_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TobaccoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

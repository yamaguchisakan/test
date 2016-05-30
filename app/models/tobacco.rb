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

class Tobacco < ActiveRecord::Base
  belongs_to :account
  belongs_to :brand
end

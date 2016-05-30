# == Schema Information
#
# Table name: accounts
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  age             :integer          not null
#  email           :text             not null
#  password_digest :string           not null
#  reference_time  :time             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Account < ActiveRecord::Base
  has_secure_password

  has_many :tobaccos, dependent: :destroy
  has_many :dayly_aggregation, dependent: :destroy
end

# == Schema Information
#
# Table name: dayly_aggregations
#
#  id              :integer          not null, primary key
#  aggregation_day :date             not null
#  avg_interval    :time             not null
#  avg_number      :float            not null
#  avg_price       :float            not null
#  account_id      :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class DaylyAggregation < ActiveRecord::Base
  belongs_to :account
end

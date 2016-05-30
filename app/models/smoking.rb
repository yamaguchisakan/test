# == Schema Information
#
# Table name: smokings
#
#  id             :integer          not null, primary key
#  smoke_date     :date             not null
#  smoke_time     :time             not null
#  smoke_interval :time             not null
#  latitude       :float            not null
#  longitude      :float            not null
#  tobacco_id     :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Smoking < ActiveRecord::Base
  belongs_to :tobacco
end

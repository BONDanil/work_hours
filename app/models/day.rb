class Day < ApplicationRecord
  include SecondsToStringHelper

  has_many :time_ranges, dependent: :destroy
  belongs_to :week

  def total_hours
    time_ranges.sum(&:total_hours)
  end
end
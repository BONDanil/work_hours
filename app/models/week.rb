class Week < ApplicationRecord
  include SecondsToStringHelper

  has_many :days, dependent: :destroy

  def total_hours
    days.sum(&:total_hours)
  end
end
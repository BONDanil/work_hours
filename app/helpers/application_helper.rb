module ApplicationHelper
  include SecondsToStringHelper

  def total_hours
    Week.all.sum(&:total_hours)
  end

  def total_weeks_hours
    total_hours_str
  end
end

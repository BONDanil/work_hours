class TimeRange < ApplicationRecord
  include SecondsToStringHelper

  belongs_to :day

  def total_hours
    time_out - time_in
  end

  def schedule_str
    "#{time_in.to_fs(:time)} - #{time_out.to_fs(:time)}"
  end
end
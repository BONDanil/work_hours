module SecondsToStringHelper
  def total_hours_str
    hours = (total_hours / 1.hour).to_i
    minutes = ((total_hours - hours.hours.to_f) / 1.minute).to_i

    "#{hours} h #{minutes} m"
  end
end
# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight,
# respectively. Both methods should return a value in the range
# 0..1439.

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  time_after_midnight = (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  time_before_midnight = MINUTES_PER_DAY - (hours * MINUTES_PER_HOUR + minutes)
  (0..1439).include?(time_before_midnight) ? time_before_midnight : 0
end

require 'pry'
class Clock
  def initialize(hour, minute)
    @hour, @minute = hour, minute
  end

  def self.at(hour, minute = 0)
    new(hour, minute)
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end

  def +(minutes_to_add)
    minutes_to_add += @hour * 60 + @minute
    @hour, @minute = minutes_to_add.divmod(60)
    @hour %= 24
    self
  end

  def -(minutes_to_subtract)
    binding.pry
    g
    self.+(-minutes_to_subtract)
  end

  def g
    binding.pry
    self.+(-minutes_to_subtract)
  end
end

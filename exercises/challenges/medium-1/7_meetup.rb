require 'date'
require 'pry'
class Meetup
  def initialize(month, year)
    @month = month
    @year  = year
  end

  def day(weekday, schedule)
    case schedule
    when :teenth
      select_date_object(weekday, date_objects[12..18])
    when :first
      select_date_object(weekday, date_objects)
    when :second
      select_date_object(weekday, date_objects, 2)
    when :third
      select_date_object(weekday, date_objects, 3)
    when :fourth
      select_date_object(weekday, date_objects, 4)
    when :last
      select_date_object(weekday, date_objects.reverse)
    end
  end

  private

  attr_reader :month, :year

  def select_date_object(weekday, dates, counter = 0)
    dates.each do |date|
      if date_is_a?(weekday, date) && counter > 0
        counter -= 1
      end
      return date if date_is_a?(weekday, date) && counter.zero?
    end
  end

  def date_is_a?(weekday, date)
    date.public_send("#{weekday}?")
  end

  def days_in_month
    return 29 if month == 2 && Date.new(year).leap?

    days = {
      [1, 3, 5, 7, 8, 10, 12] => 31,
      [2] => 28,
      [2, 4, 6, 9, 11] => 30
    }

    key = days.keys.select { |k| k.include?(month) }.first
    days[key]
  end

  def date_objects
    (1..days_in_month).each_with_object([]) do |day, collection|
      collection << Date.strptime("#{day}-#{@month}-#{@year}", '%d-%m-%Y')
    end
  end
end

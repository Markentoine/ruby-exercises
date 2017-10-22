class Series
  def initialize(series)
    @series = series
  end

  def slices(n)
    raise ArgumentError if n > series.size
    series.chars.map(&:to_i).each_cons(n).to_a
  end

  private

  attr_reader :series
end

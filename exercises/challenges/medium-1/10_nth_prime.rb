class Prime
  def self.nth(n)
    raise ArgumentError if n < 1
    return 2 if n == 1
    current_test = 3
    primes = [2]

    until primes.size == n
      primes << current_test if prime?(current_test)
      current_test += 2
    end
    primes.last
  end

  def self.prime?(number)
    (2..Math.sqrt(number)).each do |divisor|
      return false if (number % divisor).zero?
    end
  end
end

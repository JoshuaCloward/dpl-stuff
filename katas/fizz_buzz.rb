class FizzBuzz

  def self.run(count)

  if by_three?(count) && by_four?(count)
      'FizzBuzz'
    elsif by_four?(count)
      'Buzz'
    elsif by_three?(count)
      'Fizz'
    else
      count
    end
  end

  def self.by_three?(number)
     number % 3 == 0
  end

  def self.by_four?(number)
    number % 4 == 0
  end
end

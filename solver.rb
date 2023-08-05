class Solver
  def factorial(num)
    raise 'Number given must be greather than 0' if num.negative?

    result = 1
    while num > 1
      result *= num
      num -= 1
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    result = ''
    result += 'fizz' if (num % 3).zero?
    result += 'buzz' if (num % 5).zero?
    result = num.to_s if result.empty?
    result
  end
end

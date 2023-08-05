class Solver
  def factorial(num)
    if num.negative?
      return -1
    end
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
    if (num % 3).zero?
      result += 'fizz'
    end
    if (num % 5).zero?
      result += 'buzz'
    end
    if result.empty?
      result = num.to_s
    end
    result
  end
end

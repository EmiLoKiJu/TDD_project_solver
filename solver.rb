class Solver
  def factorial(n)
    if n < 0 
      return -1
    end
    result = 1
    while n > 1 do
      result *= n
      n -= 1
    end
    return result
  end

  def reverse(word)
    return word.reverse
  end

  def fizzbuzz(n)
    result = ''
    if n%3 == 0
      result += 'fizz'
    end
    if n%5 == 0
      result += 'buzz'
    end
    if result == ''
      result = n.to_s
    end
    return result
  end
end

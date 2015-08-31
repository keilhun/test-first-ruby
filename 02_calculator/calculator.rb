def add(first, second)
  return first+second
end

def subtract(first, second)
  return first-second
end

def sum(numbers)
  if (numbers.length < 1)
    return 0
  end
  
  total = 0
  numbers.each {|i| total = total+i}
  return total
end

def multiply(numbers)
  p numbers.length
  p numbers
  if (numbers.length < 1)
    return 0
  elsif (numbers.length < 2)
    return numbers[0]
  end
  p "after if"
  total = numbers.inject(1) {|result, element| result*element}
  return total
end

def power(number, power)
    return number ** power
end

def factorial(number)
  if (number === 0 || number == 1)
    return 1
  end
  total = 1
  factors = (1..number).to_a
  factors.each do |i|
    total *= i
  end
  return total
end
def add(a, b)
    return a + b
end

def subtract(a, b)
  return a - b
end

def sum(arr)
  return arr.sum
end

def multiply(a, b)
  return a * b
end

def power(base, exponent)
  return base**exponent
end

# factorial with recursion
def factorial(n)
  return 1 if n == 0
  return n * factorial(n - 1)
end

# factorial with loop
# def factorial(n)
#     result = 1
#     (1..n).each do |i|
#       result *= i
#     end
#     return result
#   end
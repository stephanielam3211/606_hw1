# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  h = {}
  arr.each do |n|
    return true if h[number - n]
    h[n] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  return false if string.empty?
  first_letter = string[0].downcase
  if %w[a e i o u].include?(first_letter)
    return false
  end
  if !first_letter.match?(/[a-z]/)
    return false
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end

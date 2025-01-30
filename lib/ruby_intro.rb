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
  if !string.match?(/\A[01]+\z/)
    return false
  end
  bin_arr = string.each_byte.map {|b| sprintf('%08b', b)}
  if string.to_i(2) % 4 == 0
    return true
  end
  false
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, "ISBN cannot be empty"
    end
    if price <= 0
      raise ArgumentError, "Price has to be greater than $0"
    end
    @isbn = isbn
    @price = price.to_f
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    "$%.2f" % @price
  end
end

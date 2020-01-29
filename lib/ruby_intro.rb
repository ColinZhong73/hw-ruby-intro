# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  else
    num = 0
    arr.each { |x| num += x}
    num
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  max_2_arr = arr.max(2)
  sum(max_2_arr)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  isSummed = false
  if !arr.empty?
    arr.sort!
    arr.each{
    |x| num = n - x
    if num >= 0
      narr = arr.select{|y| y >= x}
      narr.shift
      if !narr.empty?
        narr.each { |y| 
        if num == y
          isSummed = true
        end
        }
      end
    end
    }
  end
  isSummed
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  val = /[B-DF-HJ-NP-TV-Zb-df-hj-np-tv-z]/ =~ s.chr
  val != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  val = s =~ /[^01]+/ 
  if val == nil
    if(s == "0")
      true
    else
      s.end_with?("00")
    end
  else
    false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' unless !isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' unless price > 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price
    @price
  end
  def price=(price)
    @price = price
  end
  
  def price_as_string
    ("$" + (price*100).round.to_s).insert(-3, '.')
  end
end

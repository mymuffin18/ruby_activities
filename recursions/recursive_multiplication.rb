require 'test/unit'
extend Test::Unit::Assertions

def multiply(a, b)
  if b == 0
    0
  elsif b < 0
    -(a - multiply(a, b + 1))
  else
    (a + multiply(a, b - 1))
  end
end


assert_equal(multiply(5, 4), 20, 'Incorrect product')
assert_equal(multiply(5, -4), -20, 'Product must be negative.')
assert_equal(multiply(-10, 4), -40, 'Product must be negative.')
assert_equal(multiply(-10, 0), 0, 'Product must be zero.')
assert_equal(multiply(0, 10), 0, 'Product must be zero.')
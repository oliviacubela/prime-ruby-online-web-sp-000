#
# def prime?(n)
#   return n | 1 == 3 if n < 5
#   return false if n.gcd(6) != 1
#   p, sqrtn = 5, Integer.sqrt(n)
#   until p > sqrtn
#     return false if n % p == 0 || n % (p + 2) == 0
#     p += 6
#   end
#   true
# end
def prime?(value)
  if value <= 1 || value == 0 || value == 1
    return false
  elsif
    (2..value - 1).each do |i|
      if value % i == 0
      return false
    end
  end
end
true  # <= need explanation
end

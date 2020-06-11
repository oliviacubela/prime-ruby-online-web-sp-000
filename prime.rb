
def prime?(n)
  return n | 1 == 3 if n < 5
  return false if n.gcd(6) != 1
  p, sqrtn = 5, Integer.sqrt(n)
  until p > sqrtn
    return false if n % p == 0 || n % (p + 2) == 0
    p += 6
  end
  true
end

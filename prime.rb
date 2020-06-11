
def primep3?(n)                           # P3 Prime Generator primality test
  # P3 = 6*k + {5, 7}                     # P3 primes candidates (pc) sequence
  return n | 1 == 3 if n < 5              # n: 0,1,4|false, 2,3|true
  return false if n.gcd(6) != 1           # 1/3 (2/6) of integers are P3 pc
  p, sqrtn = 5, Integer.sqrt(n)           # first P3 sequence value
  until p > sqrtn
    return false if n % p == 0 || n % (p + 2) == 0  # if n is composite
    p += 6      # first prime candidate for next kth residues group
  end
  true
end
# def trial_division(n: int) -> List[int]:
#     a = []
#     while n % 2 == 0:
#         a.append(2)
#         n /= 2
#     f = 3
#     while f * f <= n:
#         if n % f == 0:
#             a.append(f)
#             n /= f
#         else:
#             f += 2
#     if n != 1: a.append(n)
#     # Only odd number is possible
#     return a

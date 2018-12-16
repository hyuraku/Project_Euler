target = 600851475143
# a_list = []
# for num in 2..100000
#   if target % num == 0
#     target = target/num
#     a_list.push(num)
#   end
# end
# p a_list

require 'prime'

p (Prime.prime_division(target).map {|p, e| [p] * e }.flatten).max

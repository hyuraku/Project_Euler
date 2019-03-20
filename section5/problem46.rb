require "prime"

def prime?(n)
  Prime.prime?(n)
end

tar_list = ((9..10000).to_a).select{|a| (a%2!=0) && !prime?(a)}
prime_list = ((2..10000).to_a).select{|a| prime?(a)}
double_list = (1..80).to_a.map{|a| 2 * a * a }

odd_composite_list= prime_list.product(double_list).map{|a, b| a+b}.select{|v| v < 10000}.uniq!

p tar_list - odd_composite_list

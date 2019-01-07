require "prime"

def prime_check(n)
  Prime.prime?(n)
end

goal = 28123
tar_list = []
sum = 0

(2..goal).each do |i|
  number = 0
  unless prime_check(i)
    (1..i/2).each do |tar|
      if i%tar == 0
        number += tar
      end
    end
    if number > i
      tar_list.push(i)
    end
  end
end

tar_list = tar_list.repeated_combination(2).to_a
b_tar_list = (tar_list.map{ |i| i.sum}).uniq
sum_list = (1..goal).to_a - b_tar_list
p sum_list.sum

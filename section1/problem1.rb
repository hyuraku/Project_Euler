target = 1000
sum = 0
(1..(target-1)).each do |num|
  if num%15 == 0
    sum += num
  elsif num%3 == 0
    sum += num
  elsif num%5 == 0
    sum += num
  end
end
p sum

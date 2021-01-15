def every_num_double(x)
  x.to_s.split('').map{|i| (i.to_i)**2}.sum
end

min = 1
max = 10000000

list_1 = []
list_89 = []

(min...max).each do |c|
  a = every_num_double(c)
  while !list_89.include?(a) && !list_1.include?(a) && ![1,89].include?(a)
    a = every_num_double(a)
  end
  if a == 89 || list_89.include?(a)
    list_89.append(c)
  elsif a == 1 || list_1.include?(a)
    list_1.append(c)
  end    
end

p list_89.size
p list_1.size

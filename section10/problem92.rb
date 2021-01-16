def sort_num(x)
  x.to_s.split('').sort.join("").to_i
end

def every_num_double(x)
  x.to_s.split('').map{|i| (i.to_i)**2}.sum
end

min = 1
max = 10000000

list_1 = []
list_89 = []

arr = (min...max)
arr = arr.map{ |i| sort_num(i) }.sort
arr =  arr.group_by(&:itself).transform_values(&:count)

arr.each do | c , _ |
  a = c
  while !list_89.include?(a) && !list_1.include?(a) && ![1,89].include?(a)
    a = every_num_double(a)
    a = sort_num(a)
  end
  if a == 89 || list_89.include?(a)
    list_89.append(c)
  elsif a == 1 || list_1.include?(a)
    list_1.append(c)
  end
end

p arr.select{|i,size| list_89.include?(i)}.values.sum


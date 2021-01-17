def calculate_area(x,y)  
  a = Math.sqrt((x+y)*(x-y))
  (a - a.to_i) == 0
end

max = 1000000000

min = 2

a_max = max/3

arr = (min..a_max)
# arr = arr.select{|x| x%2 == 1}

sum = 0
arr.each do |a|
  aa = a + 1
  if calculate_area(a, (aa/2.0))
    # p a
    sum += (a *2 + aa)
  end
  aaa = a - 1
  if calculate_area(a, (aaa/2.0))
    sum += (a *2 + aaa)
  end
end

p sum

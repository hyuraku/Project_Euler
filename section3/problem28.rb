sum = 0
target = 5

a_list = ((1..1001).map{|i| i**2 if i%2==1 }).compact

a_list.each do |ele|
  if ele == 1
    sum += 1
  else
    sum = sum + ele * 4 - (Math.sqrt(ele) -1 ) * 6
  end
end

p sum

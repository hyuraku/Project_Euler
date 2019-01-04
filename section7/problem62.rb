def change_number(n)
  ((n.to_s).split('')).sort
end

goal = 10000

sample_list = (1..goal).map {|i| i ** 3}
a_list = sample_list.map{|i| change_number(i) }

a_list.each_with_index do |tar,index|
  if a_list.count(tar) == 5
    p tar
    p index + 1
    p (index + 1) ** 3
    break
  end
end

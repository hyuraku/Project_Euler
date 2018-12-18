a_list = [1,2]

def finab(x,a_list)
  tar = a_list[x-2].clone + a_list[x-3].clone
  a_list.push(tar)
  tar
end

(3..1000).each do |ele|
  finab(ele,a_list)
  if a_list.last > 4000000
    break
  end
end

a_list.pop()

total = 0
a_list.each do |ele|
  if ele.even?
    total += ele
  end
end

p total

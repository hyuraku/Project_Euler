a_list = [2]

for i in 3..2000000
  time = 0
  for ele in a_list
    if ele > i/2
      break
    end
    if i%ele == 0
      time += 1
      break
    end
  end
  if time == 0
    a_list.push(i)
  end
end

p a_list.sum

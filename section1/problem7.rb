a_list = [2]
for tar in 2..10 ** 7
  time = 0
  for ele in a_list do
    if tar%ele == 0
      time += 1
    end
  end
  if time == 0
    a_list.push(tar)
  end
  if a_list.length == 10001
    p "#{tar} is target"
    break
  end
end

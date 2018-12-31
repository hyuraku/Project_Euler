def fanction(a,b)
  if a%b == 0
    b
  else
    fanction(b,a%b)
  end
end

goal = 2520

(11..20).each do |ele|
  goal = goal * ele / fanction(goal,ele)
end

p goal

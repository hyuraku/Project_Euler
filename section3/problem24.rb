def factorial(n)
  return 1 if n == 0
  return n * factorial(n - 1)
end

goal = 100 * 10000 - (factorial(9) * 2 + factorial(8) * 6 + factorial(7)*6 )

order = 0

2780134569.upto(9876543210).each do |target|
  tar = (target.to_s).split('')
  tar = tar.uniq
  if tar.size == 10
    order += 1
    p order
  end
  if order == goal
    p target
    break
  end
end

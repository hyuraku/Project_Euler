tar = 0
max = 0
def chain(n,list=[])
  list.push(n)
  if n == 1
    1
  elsif n.even?
    n=n/2
    chain(n,list)
  else
    n=3*n + 1
    chain(n,list)
  end
end

2.upto(10 ** 6).each do |i|
  a_list = []
  chain(i, a_list)
  if a_list.size > max
    tar = i
    max = a_list.size
  end
end

p tar

def formula(x)
  x * (3 * x -1)/2
end

aa = (1..1000).map{|a| formula(a)}

bb = aa.combination(3).to_a
min = 0
bb.each{ |a,b,c|
  d = (c - a)/2
  if (b * 2  == a + c) && (aa.include?(d))
    print([a,b,c,d])
    break
  end
 }

# end

# print(bb)

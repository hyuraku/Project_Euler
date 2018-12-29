a_list = [1,1]

def finab(x,a_list)
  tar = a_list[x-2].clone + a_list[x-3].clone
  a_list.push(tar)
  tar
end

(3..10000).each do |ele|
  tar = finab(ele,a_list)
  if  Math.log(tar,10) > 999
    p ele
    break
  end
end

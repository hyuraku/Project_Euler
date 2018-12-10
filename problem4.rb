for i in 0..9
  for j in 0..9
    target = 900009 + 10010 * i + 1100 *j
    for n in 101..999
      if target%n == 0
        if target/n < 1000
          p target
        end
      end
    end
  end
end

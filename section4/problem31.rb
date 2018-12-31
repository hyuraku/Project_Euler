ways = 8

(0..1).each do |h_i|
  (0..3).each do |ft_i|
    (0..9).each do |tt_i|
      (0..19).each do |ten_i|
        (0..39).each do |five_i|
          (0..99).each do |two_i|
            (0..199).each do |one_i|
              total = one_i * 1 + two_i * 2 + five_i * 5 + ten_i * 10 + tt_i * 20 + ft_i * 50 + h_i * 100
              if total == 200
                ways += 1
              end
            end
          end
        end
      end
    end
  end
end

p ways

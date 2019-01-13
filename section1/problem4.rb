class Problem4
  def initialize(limit)
    @limit = limit
  end

  def run
    cal(@limit)
  end

  private

  def cal(limit)
    for i in 0..9
      for j in 0..9
        target = 900009 + 10010 * i + 1100 *j
        for n in 101..999
          if target%n == 0
            if target/n < limit
              ans=target
              break
            end
          end
        end
      end
    end
    ans
  end
end

p Problem4.new(1000).run

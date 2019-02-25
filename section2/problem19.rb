require "Date"

class Problem19
  def initialize
    @start_day = Date.new(1901,1,1)
    @end_day = Date.new(2000,12,31)
    @total = 0
  end

  def run
    (@start_day..@end_day).each do |day|
      if day.wday == 0 && day.day == 1
        @total += 1
      end
    end
    @total
  end
end


p Problem19.new.run

class Problem15
  def initialize
    @list = [1]*21
  end

  def run
    (1..20).each do |i|
      (2..21).each do |ele|
        @list[ele-1] = @list[ele-1] + @list[ele-2]
      end
    end
    @list.last
  end
end

p Problem15.new.run

require 'pp'

module MM
  def mm_t1
    input = gets
    pp input
    pp '=-=========mm_t1==========', 'eeeeeeee', 'errrrrrrrrrrr'
  end
end

class Day01
  include MM
  AA = 'AAAAAA'
  $g = 'GGGGGG'#不怎么用到

  @ccc = 'ccccccc'
  @@bbb = 'bbbbbbbbb' #不怎么用到

  def initialize
    @foo = 1
  end

  def tt_1
=begin
    pp '--------tt_1---------'
    unless !(1==1)

    end

    [1,2,3,4].each do |num|

    end

    begin

    rescue Exception => exc
      raise exc
    ensure


    end
=end
  end

  alias :tt_2 :tt_1

  def tt_1
    @aaa = 'ddddddddddddd'
    # pp '-----------new method tt_1-----------'
    # i = 4561321
    # pp i.class
    # i = i*11111111111111111111
    #
    # hash = {'aaaaa' => '11111', 2 => '22222'}
    #
    # pp i.class
    # flag = true
    # for i in 1...5
    #   # pp '-----------'+i.to_s+'--------------'
    #   # if i == 3
    #   #   next
    #   # end
    #   if flag && i==3
    #     flag = false
    #     retry
    #   end
    #   pp "-------#{i}--------"
    # end
    # str = 'aa'
    # case str
    #   when 'aa'
    #     pp '-------------11'
    #   when 'bb'
    # end
    # 5.times do |i|
    #   pp i
    # end
    # [54,845,'gdfg', ['gdg', 'et']].each do |i|
    #   pp i
    # end
    [54,845,'gdfg', ['gdg', 'et']].map do |i|
      pp i
    end

  end

  def tt_2
    aa, bb, cc = 11, 22, 33

  end

  # def tt_

  def self.tt_10 name
    define_method(name) do
      pp name
    end
  end


end

class Day01_1 < Day01

end

# pp defined? Day01::AA
# pp __FILE__
# pp __LINE__
# Day01.new.tt_1
day = Day01.new
# day.tt_1
class << day
  def tt_3
    pp 'tt_3'
  end
end
day.tt_3

day.instance_eval do
  def tt_4
    pp 'tt_4'
  end
end
# day.tt_4
# pp day.instance_variable_get('@foo')
# pp day.instance_variables
# pp Day01::AA
# Day01.const_set('AA', 'BBBBBBB')
# pp Day01::AA
Day01.tt_10 'tt_11'

day.tt_11
# Day01.new.tt_4
# pp $g


require 'pp'
class Day02

  AA = 'AAAAAAAA'



  def initialize *name

    # pp AA
    # pp '================11111'+name.to_s
  end

  # qqqqq='qqqqqqqqqqqqq'

  # pp qqqqq
  def public_m1
    pp self.class
    @@aaaa ='1111111'
    pp @@aaaa
    # Day02.public_m3
  end

  class << Day02
    def public_m2
      pp 'public_m2'
    end
  end

  def self.bbb
    pp self.class
    # pp 'bbb'

  end

  def self.public_m3
    aaa = 'ssssss'
    bbb = '11111111'
    pp bbb()
    pp 'public_m3'
  end

  def Day02.mmm_1
    pp '====mmm_1======'
  end

  def public_m4
    2.times {
      p defined?(v)    # (A)
      v = 1            # 从(开始声明)起
      p v              # 到(块的终结)是 v 的作用域
    }
  end

  def name= name
    pp name
  end

  def age= age
    pp age
  end

  def + name
    pp "name++++++++=#{name}"
  end

  def - name
    pp "name---------=#{name}"
  end

  def is_num?
    false
  end

  def add!
  end

 def tt_1
   aa, bb, cc = 11, 22, 33
    pp aa, bb, cc

   aa, bb, cc = tt_2
   pp tt_2.class

   aa, bb, cc = [123,545]
   pp aa, bb, cc
   pp [11,22][10]
 end

  def tt_2
    aa, bb, cc = 12, 23, 34
    return aa, bb, cc
  end

end
# Day02.new 'name', 'name2', 'name3'
# # Day02.new.public_m1
# # Day02.public_m3
# Day02.const_get('AA')
# pp Day02::AA
# Day02.bbb
# Day02.new.public_m1
# pp nil.to_s
# pp false.class
# FalseClass
# day = Day02.new
# day + 'aaaaaaa'
# day - 'bbbbbbb'
# day.send('+', 123)

# day public_m1
# i=100
# class << 1
#   def + num
#     self + num*2
#   end
# end
# pp i+2
# Day02.new.tt_1
# Day02.mmm_1
Day02.new.name= '2222222222'
Day02.new.age= 2222
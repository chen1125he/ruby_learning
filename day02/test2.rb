require 'pp'
class Test2
  attr_accessor :aa


  def initialize
    @aa = 'AAAAAAAA'
  end

  def public_m1
    protected_m1
  end

  def public_m2
    self.protected_m1
  end

  def public_m3
    private_m1
  end

  #error
  def public_m4
    self.private_m1
  end



  protected
  def protected_m1
    pp '---------protected_m1-------------'
  end

  private
  def private_m1
    pp '----------private_m1---------'
  end
  def private_m3 name
    pp '----------private_m3---------'+name
  end
end

class Test2_2 < Test2



  def aaa name
    private_m1
    private_m1
    private_m2

  end

  private
  def private_m2
    pp '----------private_m2---------'
  end
end

# t = Test2.new
# t.public_m1
# t.public_m2
# t.public_m3
# t.public_m4
# Test2_2.new.aaa
# t = Test2.new
# # pp t.aa= 'bbbbbbbbbbbb'
# # pp t.aa
# # pp eval "Test2.new.instance_variable_get(:@aa)"
# Test2.class_eval do
#   def ttt
#     pp 'tttttttt'
#   end
# end
# Test2.new.ttt
# pp Test2.aaaa
# pp Test2.aaaa
t = Test2.new
t2 = Test2.new
# pp t.aaaa
class << t
  def aaaa
    pp 'aaaaaaaaaaaa'
  end
end
t2.instance_eval do
  def aaaa
    pp 't2aaaaaaaaaa'
  end
end
t.aaaa
t2.aaaa
'aaaa'.to_sym
t.instance_variable_set :@aa, 'qqqqqqqqqqqq'
pp t.instance_variable_get '@aa'
t2.send 'private_m3', "aaaaaa"




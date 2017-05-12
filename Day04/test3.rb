require 'pp'
class Test3

  def t1
    pp [1,2,3]
    pp Array.new(2, 8)
    pp %W(a#{1+1} b c)
    pp %w(a#{1+1} b c)
  end

  def t2
    a = 'aaaaaa'
    a = yield a if block_given?
    pp a
  end

  def t3
    local_var = ' aaaaaaaaaaaaaaaaaaaa'
    Proc.new { |s, a| pp s + a + local_var }
  end

  def t4
    local_var = ' bbbbbbbbbbbbbbbbbbbb'
    Object
    lambda  { |s, a| pp s + a + local_var }
  end

end
v = '1111111111111'
t = Test3.new
# t.t1
t.t2 do |a|
  pp a
  v
end

proc = t.t4
proc.call 'Ruby', 'JAVA'
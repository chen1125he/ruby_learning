require 'pp'
class Day03

  def array
#     pp ['a', 'b', 'c']
#     pp Array.new 3, 'a'
#     pp Array.new
#     pp Array.new(2)
#     pp Array.new(5, "A")
#
#
#     pp %W(a#{1+1} b c)
#     pp %w(aa#{1+1} bb cc)
#
#     pp %Q(
#       ddddddddddddd
# dfgffffffffffffff#{1+2000}
# fffffffffffff
#
#        )
#     pp %q(
#       ddddddddddddd
# dfgffffffffffffff#{1+2000}
# fffffffffffff
#
#        )
    arr = [5,6,7,8,9, 9]
    # pp arr[0]
    # pp arr.at(0)
    # pp arr.include? 10
    # pp arr.index 7
    # pp arr.uniq!
    # # pp arr.clear
    # pp arr
    # arr.delete_if do |i|
    #   i==7
    # end
    # pp arr
    arr += ['aaa', 'bbb']
    arr << 'cccc'
    arr[1]= '111'
    pp arr

    pp [ "a", "b", "c" ].join        #=> "abc"
    pp 'abc'.split('')
    pp [ "a", "b", "c" ].join("-")   #=> "a-b-c"
    pp "a-b-c".split('-')
 pp [ "a", "b", "c" ].reverse   #=> ["c", "b", "a"]
    pp arr
    pp arr.pop(2)
    pp arr

    pp arr.shift(2)
    pp arr

    #clear,

  end

  def str
    str1=<<EOV
I am s string too.
I am s string too.
EOV

    pp str1
    # str1.each_char do |char|
    #   pp char
    # end
    str1.each_line do |line|
      pp line
    end

    pp  'hello'.match(/(.)\1/)[0]   #=> "ll"

    pp 'ddddddddddssss'.sub 'ss', 'aaaaaaaa'
    pp 'ddddddddddssss'.gsub 'ss', 'aaaaaaaa'
    pp "   #{1+1} hddd   ello    ".strip!   #=> "hello"
  end

  def block1 &block
    num = 1000

    num = yield num if block_given?

    pp block.call num

    pp num
  end

  def block2 flag ,yes, no
    a = 'aaaaa'
    b = 'bbbbb'
    if flag
      yes.call(a)
    else
      no.call(b)
    end

  end

  def hash
    h1={ :a => 'a', :b => 'b' }
    h2={a: 'a', b: 'b'}

    h3={'1' => 'a', b: 'b'}
    pp h3[:b]
    pp :b.class
    Symbol
    pp 'b'.to_sym.class

  end

  def hash2
    h = {a: '111', b: '222'}

    pp h.merge! c: '333'
    # pp h[:a]

    # h.each do |key, val|
    #   pp key, val
    #
    # end

    # h.each_key do |key|
    #   pp key
    #
    # end
    h.each_value do |val|
      pp val

    end

    h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
    pp h.invert   #=> {0=>"a", 100=>"n", 200=>"d", 300=>"y"}

    arr = [['a', 1],['b', 2],['c', 3]]

    pp arr
    pp Hash[arr]
  end



end
str = 'aaaaaaaaaaaaaaaaa'
# Day03.new.block1 do
#   pp str
# end
# i = 100
# Day03.new.block1 { |num|
#   num + i
# }

# Day03.new.block2 false, Proc.new{|a| pp "yes #{a}"}, Proc.new{ |b| pp "no #{b}"}
# Day03.new.hash
# pp :foo.object_id
# pp :foo.object_id
# pp :"foo".object_id
# pp 'foo'.object_id
# pp 'foo'.object_id

Day03.new.hash2

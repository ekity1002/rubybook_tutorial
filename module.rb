# require "./lib/rainbowable"

# class Product
#   prepend Loggable
#   def hello
#     puts "Hello"
#     "Hello"
#   end
# end

# p = Product.new
# p.hello

def greet(&block)
	puts "hoge"
  if block_given?
    block.call("hoge")
    block.call("hoge","fuga")
  end
	puts "fuga"
end

greet do |hoge, fuga|
	puts "baka #{hoge} #{fuga}"
end

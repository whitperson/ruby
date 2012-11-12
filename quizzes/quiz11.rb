require 'pry'
require 'test/unit'

class MyTest < Test::Unit::TestCase
     def test_simple
         assert_equal(11, 11) 
     end
end

class MyString
	def self.length(t)
		t.length
	end
end

n = MyString.length('Hello World')
test_simple(n)
require 'pry'
require 'test/unit'

class MyString
	def self.length(t)
		t.to_s.length #defined length of  string to be tested
	end
end

class MyTest < Test::Unit::TestCase
	def test_length
		assert_equal(11, MyString.length('Hello World')) # compares length of string t (or 'Hello World') to 11
	end
end

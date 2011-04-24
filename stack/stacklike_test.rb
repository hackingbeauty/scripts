require 'test/unit'
require 'stack'

class StacklikeTest < Test::Unit::TestCase

	def setup
		@s = Stack.new
	end

	def test_add_to_stack
		@s.add_to_stack("item 1")
		assert @s.stack.include?("item 1")
	end

	def test_take_from_stack
		@s.take_from_stack
		assert !@s.stack.include?("item 1")
	end	

end

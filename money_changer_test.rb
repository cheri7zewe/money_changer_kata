require "minitest/autorun"
require_relative "money_changer.rb"

class TestCoinChanger <Minitest::Test 

	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))
	end

	def test_one_cent_returns_hash_with_one_penny
		assert_equal({:penny => 1}, generate_change(1))
	end

	def test_two_cents_returns_hash_with_two_penny
		assert_equal({:penny => 2}, generate_change(2))
	end

	def test_five_cents_returns_hash_with_one_nickel
		assert_equal({:nickel => 1}, generate_change(5))
	end

end
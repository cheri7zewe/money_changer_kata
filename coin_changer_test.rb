require "minitest/autorun"
require_relative "coin_changer.rb"

class Coin_Changer<Minitest::Test

	def test_for_dime_to_return_1_for_10
		assert_equal({:quarter => 0, :dime => 1, :nickel => 0, :penny => 0}, money(10))
	end

	def test_for_85
		assert_equal({:quarter => 3, :dime => 1, :nickel => 0, :penny => 0}, money(85))
	end

	def test_for_296
		assert_equal({:quarter => 11, :dime => 2, :nickel => 0, :penny => 1}, money(296))
	end

	def test_for_43
		assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 3}, money(43))
	end

end
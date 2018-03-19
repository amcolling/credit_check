require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'

  class CreditCheckTest < Minitest::Test
    def test_credit_check_test_exists
    credit_check = CreditCheck.new("4929735477250543")
    assert_instance_of CreditCheck, credit_check
    end

    def test_credit_card_number
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal "4929735477250543", credit_check.credit_card_number
    end

    def test_convert_to_array
    credit_check = CreditCheck.new ("4929735477250543")
    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], credit_check.convert_to_array
    end

    def test_every_other_digit
    credit_check = CreditCheck.new ("4929735477250543")
    assert_equal [3, 8, 5, 0, 5, 4, 7,14, 4, 10, 3, 14, 9, 4, 9, 8], credit_check.every_other_digit
    end

    def test_add_digits_over_ten
    credit_check = CreditCheck.new ("4929735477250543")
    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], credit_check.add_digits_over_ten
    end

    def test_sum_of_it_all
    credit_check = CreditCheck.new ("4929735477250543")
    assert_equal 107, credit_check.sum_of_it_all.sum
    end
end

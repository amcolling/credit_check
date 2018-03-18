class CreditCheck
attr_reader :credit_card_number,
            :convert_to_array,
            :every_other_digit,
            :sum_of_it_all


  def initialize(credit_card_number)
    @credit_card_number = credit_card_number
    end

  def convert_to_array
    card_number_array = @credit_card_number.to_i.digits

    end

  def every_other_digit
    doubled = convert_to_array.map.with_index do |digit, index|
      if index.odd? == true
        digit * 2
      else
      digit
    end
  end
end



  def sum_of_it_all
    over_ten = every_other_digit.map do |num|
    if num.digits.sum % 10 == 0
    puts "This number is valid!"
  else
    puts "This number is not valid!"
    end
  end
  end
end



















# Your Luhn Algorithm Here




# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"

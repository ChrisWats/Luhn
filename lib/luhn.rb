module Luhn
  def self.is_valid?(number)
    #break the credit card into its individual digits.
    n = []

    while number > 0 do
      n << number % 10
      number = number / 10
    end

    #Start from the right double every second digit.
    #If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
    sum = 0

    n.each_index do |i|
      if i % 2 == 1
        n[i] = n[i] * 2
        if n[i] >= 10
          n[i] -= 9
        end
      end
      sum += n[i]
    end
    #Check to see if it is divisible by 10
    return sum % 10 == 0
  end
end
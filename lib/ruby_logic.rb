# Class Number
# def initialize(number)
#   @number = Number
# end

def one_number(number)
  values = {
        1000000 => "million",
        1000 => "thousand",
        100 => "hundred",
        90 => "ninety",
        80 => "eighty",
        70 => "seventy",
        60 => "sixty",
        50 => "fifty",
        40 => "forty",
        30 => "thirty",
        20 => "twenty",
        19 => "nineteen",
        18 => "eighteen",
        17 => "seventeen",
        16 => "sixteen",
        15 => "fifteen",
        14 => "fourteen",
        13 => "thirteen",
        12 => "twelve",
        11 => "eleven",
        10 => "ten",
        9 => "nine",
        8 => "eight",
        7 => "seven",
        6 => "six",
        5 => "five",
        4 => "four",
        3 => "three",
        2 => "two",
        1 => "one"
    }
   str = ""
   values.each do |k , v|
     if number == 0
       return str
     elsif number.to_s.length == 1 && number/k > 0
       return str + "#{v}"
     elsif number < 100 && number/k > 0
       return str + "#{v}" if number%k == 0
       return str + "#{v}" + one_number(number%k)
     elsif number/k > 0
       return str + one_number(number/k) + " #{v} " + one_number(number%k)
     end
   end
 end

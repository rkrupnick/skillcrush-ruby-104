

def get_number(birthdate)
  number = birthdate[0].to_i
  number += birthdate[1].to_i
  number += birthdate[2].to_i
  number += birthdate[3].to_i
  number += birthdate[4].to_i
  number += birthdate[5].to_i
  number += birthdate[6].to_i
  number += birthdate[7].to_i

  if number > 9
    birthdate = number.to_s
    number = birthdate[0].to_i
    number += birthdate[1].to_i
  else
    return number
  end
end

def message(number)
  num_message = "Your numerology number is #{number}."
end

puts "Please input your birthday in this format: MMDDYYYY:"
birthdate = gets.chomp
num = get_number(birthdate)
puts message(num)


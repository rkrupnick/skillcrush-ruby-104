def always_three(num) 
  (((((num + 5) * 2) - 4) / 2) - num)
end

puts "Give me a number."
the_num = gets.to_i

puts "The result is always " + always_three(the_num).to_s
def display_menu:
  puts "\nSimple Calculator"
  puts "------------------"
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Multiplication"
  puts "4. Division"
  puts "5. Exit"
  print "Enter Option: "
end

def calculate:
  case option
  when 1
    puts "Result: #{num1} + #{num2} = #{num1 + num2}"
  when 2
    puts "Result: #{num1} - #{num2} = #{num1 - num2}"
  when 3
    puts "Result: #{num1} * #{num2} = #{num1 * num2}"
  when 4
    if num2 != 0
      puts "Result: #{num1} / #{num2} = #{num1.to_f / num2}"
    else
      puts "Error: Division by zero is not allowed!"
    end
  else
    puts "Invalid operation selected."
  end
end

loop 
display_menu
option = gets.chomp.to_i

break if option == 5

if option.between?(1, 4)
  print "Enter the first number: "
  num1 = gets.chomp.to_f
  print "Enter the second number: "
  num2 = gets.chomp.to_f
  perform_operation(option, num1, num2)
else
  puts "Invalid option. Please select a valid option (1-5)."
end
end

puts "Thank you for using the calculator. Goodbye!"
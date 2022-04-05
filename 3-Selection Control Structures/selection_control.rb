x = 1

# If else structures
if x == 1
  puts "x is 1"
elsif x == 2
  puts "x is 2"
else
  puts "x is neither 1 nor 2"
end


# Switch cases
def get_day_name(day)
   day_name = ""

   case day
   when "mon"
      day_name = "Monday"
   when "tue"
      day_name = "Tuesday"
   when "wed"
      day_name = "Wednesday"
   when "thu"
      day_name = "Thursday"
   when "fri"
      day_name = "Friday"
   when "sat"
      day_name = "Saturday"
   when "sun"
      day_name = "Sunday"
   else
      day_name = "Invalid abbreviation"
   end

   return day_name
end


# Unless statements
x = 1
unless x > 2
  puts "x is less than or equal to 2"
else
  puts "x is greater than 2"
end


# A way to solve dangling else problem
puts "x is less than 3" if x <= 4


# Short-circuit evaluation and Operators Precedence
result = true and false
puts result # => true

result = true && false
puts result # => false


# Break and next
case x
when 1
   puts "x is 1"
   return
   puts "This will not be executed"
when 2
   puts "x is 2"
end


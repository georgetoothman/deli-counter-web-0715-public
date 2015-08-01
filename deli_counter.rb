katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    line_string = "The line is currently:"
    katz_deli.each_with_index do |name, spot|
      line_string += " #{spot + 1}. #{name}"
    end  
    puts line_string
  end
end

def take_a_number(katz_deli, new_person)
  katz_deli << new_person
  number_in_line = katz_deli.index(new_person)
  puts "Welcome, #{new_person}. You are number #{number_in_line + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

  # katz_deli = []

  # take_a_number(katz_deli, "Ada") #=> 1
  # take_a_number(katz_deli, "Grace") #=> 2
  # take_a_number(katz_deli, "Kent") #=> 3

  # line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

  # now_serving(katz_deli) #=> "Currently serving Ada."

  # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

  # take_a_number(katz_deli, "Matz") #=> "3"

  # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

  # now_serving(katz_deli) #=> "Currently serving Grace."

  # line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
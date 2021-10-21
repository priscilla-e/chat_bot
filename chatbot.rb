#A simple ChatBot program

loop do
  print '> '
  user_input = gets.chomp
  is_upcase = user_input.upcase
  if user_input == 'BYE!'
    break
  else
    if user_input == is_upcase then
      puts "No, not since #{rand(1930...1950)}"
    else
      random = rand 3
      if random < 2 then
        puts 'What?'
      else
        puts 'HUH? Speak up sonny!'
      end
    end
  end
end
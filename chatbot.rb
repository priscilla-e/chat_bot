#A simple ChatBot program

quotes = File.readlines "quotes.db"

loop do
  print '> '
  user_input = gets.chomp
  is_upcase = user_input.upcase
  if user_input == 'BYE!'
    shout_count = 1
    while shout_count < 3 do
      print '> '
      user_input = gets.chomp
      if user_input == 'BYE!' then
        shout_count += 1
      else
        shout_count = 0
      end
    end
    break
  elsif user_input.end_with?('?') then
    puts "#{quotes.sample}"
  else
    if user_input == is_upcase then
      puts "No, not since #{rand(1930...1950)}"
    else
      random = rand 2
      if random < 1 then
        puts 'What?'
      else
        puts 'HUH? Speak up sonny!'
      end
    end
  end
end
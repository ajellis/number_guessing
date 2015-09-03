
def random_number
  number = rand(1..100)
end


computer_number = random_number
counter = 1
array = []

puts "I wanna play a game. I'm thinking of a number between 1 and 100. You have 5 guesses to figure out what is it. Don't worry, I'll help you out. Go!"
puts "Enter your first guess"



loop do
  guess = gets.chomp.to_i

  if array.include?(guess)
    puts "You've already guessed that. Guess again!"

  elsif counter > 4
    puts "That's 5 guesses! You failed!"
    break

  elsif computer_number == guess.to_i
    puts "Great job! You got it"
    break

  elsif computer_number.to_i > guess.to_i
    puts "Your guess is too low!"
    puts "Guess again!"

  elsif computer_number.to_i < guess.to_i
    puts "Your guess is too high!"
    puts "Enter another number!"

  end

  array << guess
  counter += 1

end

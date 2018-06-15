
require 'pry'

puts "Ready to find your most repeated letters word."

def playagain
  puts "Would you like to try agian? Y/N"
  ans = gets.strip()
  if (ans == "Y")
    start
  else
    puts "Bye"
  end
end


def start
  puts "Choose your options"
  puts "1. Try It"
  puts "2. Exit"
  @choice = gets.strip()
  if (@choice == "1")
    puts "Please enter your words here.."
    @sentence = gets.strip()
    most_repeated
  elsif (@choice == "2")
    puts "See You, Bye!"
  else
    puts "Not a valid entry. TRY AGAIN!"
    start
  end
end



def most_repeated
  @words = @sentence.split(" ")
  @length = 0
  @most_repeat = 0
  @words.each do |w|
    @letters = w.length - w.split("").uniq.length
    if (@letters > @length)
      @most_repeat = w
      @length = @letters
    end
  end

  if (@most_repeat == 0)
    puts "not enough repeatation of letters in any words."
    puts "************************************"
    playagain
  else
    puts @most_repeat
    playagain
  end
end

start

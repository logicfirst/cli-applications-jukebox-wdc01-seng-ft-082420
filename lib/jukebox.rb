# Add your code here
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end  

def list(songs)
  songs.each.with_index(1) do |value, index| 
    puts "#{index}. #{value}" 
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  play_input = gets.strip
    
    if play_input.to_i.between?(1, 10)
      play_index = play_input.to_i -1
      puts songs[play_index]
    elsif play_input.include? "Phoenix - 1901"
      puts "Playing Phoenix - 1901"
    elsif play_input.include? "Tokyo Police Club - Wait Up"
      puts "Playing Tokyo Police Club - Wait Up"
    else
      puts "Invalid input, please try again" 
    end  
end

def exit_jukebox
  puts "Goodbye"
end
  

def run
  puts "Please enter a command:"
  run_input = gets.strip
  
  case  run_input
  when "list"
    list
  when "play"
    play
  when "help"
    help
  else
    exit_jukebox
  end  
  
end   












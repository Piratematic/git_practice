require "colorize"
require "pry"

class Git
  def initialize
    menu
  end

  def menu
    puts "--- Main Menu ---".colorize(:cyan)
    puts "1) Enter git comant".colorize(:cyan)
    puts "2) Exit".colorize(:cyan)
    print "> "
    choice = gets.to_i
    case choice
      when 1
        puts "Enter git command.".colorize(:green)
        print "> "
        puts_git(gets.strip)
        menu
      when 2
        exit
      else
        puts "Invalid Iput".colorize(:red)
        sleep(2)
        print `clear`
        menu
      end
  end

  def  puts_git(cmd)
    puts `git #{cmd} -h` 
  end
end

Git.new

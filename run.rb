require './option'

module Run
  include Options
  def run
    puts library_menu

    input = gets.chomp
    if input <= '6'
      options(input)
    elsif input == '7'
      puts 'Thanks for using our app!'
    else
      puts 'Please select a number from 1 to 7'
    end
  end
end

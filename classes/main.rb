require './app'

def main
  app = App.new

  puts 'Welcome to School Library App!'
  puts ' '

  loop do
    display_menu
    option = gets.chomp

    if option == '7'
      puts 'Thank you for using this app!'
      break
    end
    options(option, app)
  end
end



main

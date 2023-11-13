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

def display_menu
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  puts ' '
  puts 'Enter number: '
end

main

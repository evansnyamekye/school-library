require_relative 'app'


def display_ui
  puts 'Please choose an action by entering a numbe:'
  puts '1 - list all book'
  puts '2 - list all people'
  puts '3 - create a person'
  puts '4 - create a book'
  puts '5 - create a person'
  puts '6 - list all rentals for a given person id'
  puts '7 - exit'
  user_choice = gets.chomp.to_i
  excecute(user_choice)
end

def excecute(user_choice)
  case user_choice

  when 1
    puts App.list_books


  when 2
    puts App.list_persons

  when 3
    App.create_person

  when 4
    App.create_book

  when 5
    App.create_rental

  when 6
    App.list_rentals

  when 7
    abort 'Thank you for using the app. Good bye for now !'

  else
    puts ' Invalid choice . Please enter a valid option'
  end
  display_ui
end

puts 'Welcome to School Library App!'
display_ui

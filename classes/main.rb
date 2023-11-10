require_relative 'app'

# rubocup: disable Metrics

def display_ui
  puts 'Please choose an action by entering a number:'
  puts '1 - list all books'
  puts '2 - list all people'
  puts '3 - create a person'
  puts '4 - create a book'
  puts '5 - create a rental'
  puts '6 - list all rentals for a given person id'
  puts '7 - exit'
  user_choice = gets.chomp.to_i
  puts user_choice
  excecute(user_choice)
end

def excecute(user_choice)
case user_choice

when 1
  puts App.list_books
  display_ui

when 2
  puts App.list_persons
  display_ui

when 3
  App.create_person
  display_ui

when 4
  App.create_book
  display_ui

when 5
  App.create_rental
  display_ui

when 6
  App.list_rentals
  display_ui

when 7
  puts 'Thank you for using the app. Good bye for now !'

else
  puts ' Invalid choice . Please enter a valid option'
  display_ui
 end
end
# rubocup: enable Metrics

puts 'Welcome to School Library App!'
display_ui

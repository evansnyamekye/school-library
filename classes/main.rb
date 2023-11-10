require_relative 'app'

def display_ui
  puts 'Please choose an action by entering a numbe:'
  puts '1 - list all book'
  puts '2 - list all people'
  puts '3 - create a person'
  puts '4 - create a book'
  puts '5 - create a rental'
  puts '6 - list all rentals for a given person id'
  puts '7 - exit'
  user_choice = gets.chomp.to_i
  excecute_choice(user_choice)
end

def excecute_choice(user_choice)
  actions = {
    1 => -> { App.list_books },
    2 => -> { App.list_persons },
    3 => -> { App.create_person },
    4 => -> { App.create_book },
    5 => -> { App.create_rental },
    6 => -> { App.list_rentals },
    7 => -> { about 'Thank you for using the app. Goodbye for now!' }
  }

  action = actions[user_choice]
  if action
    action.call
  else
    puts ' Invalid choice . Please enter a valid option'
  end
  display_ui
end

puts 'Welcome to School Library App!'
display_ui

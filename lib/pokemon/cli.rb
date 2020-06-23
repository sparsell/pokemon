require 'pry'

module Pokemon
    class Pokemon::CLI
    
        def start
            get_user_name
            choose_pokemon
            validate_input(input)

        end
    end 
end

#start
    #until the user selects 'exit'
    # list 30 pokemon
    # ask user for choice (1-30 or exit)
    # validate input is w/in 1-30 and nothing else (except 'exit')
    # retreive Pokemon data according to user # input
    # once user types 'exit', quit program

        def get_user_name
            puts "What is your name, Pokemon expert?"
            user_name = gets.chomp
            puts "Welcome to the Pokemon library, #{user_name}!"
            
        end
        
        def choose_pokemon
            puts "Which Pokemon would you like to know more about? Choose a number between 1 - 30:"
            @input = gets.chomp.to_i
            pokemon = validate_input(input)
            binding.pry
        end

        def validate_input(input)
            if @input > 30 || input < 0
                puts "Please enter a number from 1 - 30"
                @input = gets.chomp.to_i
                
            end
            input
        end


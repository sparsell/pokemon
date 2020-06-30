
module Pokemon
    class Pokemon::CLI
    
        def start
            get_user_name
            list_pokemon
            choose_pokemon

        end
    end 
end

        def get_user_name
            puts ""
            puts ""
            puts ""
            puts "Welcome to the Pokemon Library!"
            puts ""
            puts ""
            puts "-----------------------------------"
            puts "What is your name, Pokemon expert?"
            @user_name = gets.chomp
            puts "-----------------------------------" 
        end
        
        def list_pokemon
            puts "-----------------------------------"
            puts "Which Pokemon would you like to know more about, #{@user_name}?"
            input = gets.chomp.to_i
            Pokemon::API.get_name(input)

        end

        def choose_pokemon(input)
            if input > 30 || input < 0
                puts "Please enter a number from 1 - 30"
                input = gets.chomp.to_i
                
            end
            input
        end


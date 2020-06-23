module Pokemon
    class Pokemon::CLI
    
        def start
            puts "What is your name?"
            user_name = gets.chomp
            puts "Welcome to Pokemon, #{user_name}! Which Pokemon would you like to know more about?"
        end
    end 
end
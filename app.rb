require "./user.rb"
require "./list.rb"
#play 
#operations
#clasification
class Apps
    def initialize()
        @list = List.new
    end

    def play(user_name)
        #Game
        puts "Digit your name: "
        user_name = gets.chomp
        puts "You should aswer 10 operations"
        @list.create_user(user_name)
    end

    def solve_operations 
        puts "This programam solve mathamatics problems"
        i = 0
        while i<=10 do
            i += 1
            num1 = Random.rand(11)
            num2 = Random.rand(11)
            rando = Random.rand(5) + 1
            print "The operation is: "
            case rando
            when 1
                print "#{num1} + #{num2} = "
                result = num1 + num2
            when 2
                print "#{num1} - #{num2} = "
                result = num1 - num2
            when 3
                print "#{num1} * #{num2} = "
                result = num1 * num2
            when 4
                if num2 == 0
                    puts "operation invalid: divided by 0"
                        num2 = Random.rand(1..11)
                end
                print "#{num1} / #{num2} = "
                result = num1 / num2
            when 5
                if num2 == 0
                    puts "operation invalid: divided by 0"
                        num2 = Random.rand(1..11)
                end
                print "#{num1} % #{num2} = "
                result = num1 % num2
            end
            puts "What is of result? "
            user_result = gets.chomp.to_i
            if user_result == result
                puts "You are great! This is correct"
            else
                puts "Sorry, keep trying"
            end
            puts "The result is #{result}"
            puts "-"*80
        end
        
    end 

    def operations
    end

    def ranking
        #players 
    end

    def run 
        puts "Calculater! "
        puts "Play game: Press enter"
        gets
        "Menu:"
        "1. Play"
        "2. Clasification"
        "Operations: Write all good operations of one user "
    end

    def test
        @list.create_user("jose")
        puts @list
        @list.save_line("jose","j+j")
        puts@list
    end
end  

def main 
    apps = Apps.new
    apps.run
end
#main()
api = Apps.new 
api.test
require "./user.rb"
require "./list.rb"
#play 
#operations
#clasification
class Apps
    def initialize()
        @list = List.new
        @user_name_now = ""
    end

    def play()
        #Game
        puts "Digit your name: "
        @user_name_now = gets.chomp
        puts "#{@user_name_now} should aswer 10 operations"
        @list.create_user(@user_name_now)
        solve_operations()
        puts "You score is: #{@list.score(@user_name_now)}"
    end

    def solve_operations() 
        puts "This game solve mathamatics problems"
        i = 1
        while i<=3 do
            i += 1
            num1 = Random.rand(11)
            num2 = Random.rand(11)
            rando = Random.rand(5) + 1
            print "The operation is: "
            case rando
            when 1
                line = "#{num1} + #{num2} =\n"
                print line
                result = num1 + num2
            when 2
                line = "#{num1} - #{num2} =\n"
                print line
                result = num1 - num2
            when 3
                line = "#{num1} * #{num2} =\n"
                print line
                result = num1 * num2
            when 4
                if num2 == 0
                    puts "operation invalid: divided by 0"
                        num2 = Random.rand(1..11)
                end
                line =  "#{num1} / #{num2} =\n"
                print line
                result = num1 / num2
            when 5
                if num2 == 0
                    puts "operation invalid: divided by 0"
                        num2 = Random.rand(1..11)
                end
                line = "#{num1} % #{num2} =\n"
                print line
                result = num1 % num2
            end
            puts "What is of result? "
            user_result = gets.chomp.to_i
            if user_result == result
                puts "You are great! This is correct"
                @list.add_points(@user_name_now)
                @list.save_line(@user_name_now, line)
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
        play()
        "2. Clasification"
        "Operations: Write all good operations of one user "
    end
    def test
        @list.create_user("jaime")
        @list.add_points("jaime")
    end

end  

def main 
    apps = Apps.new
    apps.run
    #apps.test
end
main()

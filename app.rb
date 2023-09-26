require "./user.rb"
require "./list.rb"
require 'time'
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
        puts "#{@user_name_now} should answer 10 operations"
        puts "-"*80
        time_now = Time.now
        solve_operations()
        time_later = Time.now
        time_dife = time_later - time_now
        percentage = bonus_time(time_dife)
        bonus_time =  @list.score(@user_name_now) * percentage 
        total_score = @list.score(@user_name_now) + bonus_time
        puts "You score is: #{@list.score(@user_name_now)}"
        puts "You bonus time is: #{bonus_time}"
        puts "You total score is: #{total_score}"
        puts "The time was: #{time_dife} seconds"
        @list.new_record(@user_name_now, total_score)     
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

    def bonus_time(time_seconds)
        if time_seconds < 16
           percentage = 1
        elsif time_seconds > 30
            percentage = 0
        else
            time = 30 - time_seconds
            percentage_comple = time / 14
            percentage = 1 - percentage_comple
        end
        return percentage 
    end

    def operations
        @list.showOperations(@user_name_now)
    end

    def ranking
        #Opens all file in folder records (every file have: record and name)
    end

    def run 
        puts "Calculater! "
        puts "Play game: Press enter"
        gets
        puts "Digit your name: "
        @user_name_now = gets.chomp
        @list.create_user(@user_name_now)
        puts "-"*80
        puts "Welcolme #{@user_name_now}!!!"
        "Menu:"
        "1. Play"
        #play()
        "2. Clasification"
        ranking()
        "3. Record_user"
        "Operations: Write all good operations of one user "
        operations()        
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

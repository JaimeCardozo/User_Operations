require "./user.rb"
require "./list.rb"
#play 
#operations
#clasification
class Apps
    def initialize()
        @list = List.new
    end

    def play
        #Game
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
        puts "Digit your name: "
        user_name = gets.chomp
    end

    

end  

def main 
    apps = Apps.new
    apps.run
end
main()
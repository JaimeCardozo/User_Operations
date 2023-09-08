require "./user.rb"
require "./list.rb"
class Apps
    def initialize()
        @list = List.new
    end

    def run 
        puts "Welcome! "
        puts "Play game: Press enter"
        gets
    end
end  

def main 
    apps = Apps.new
    apps.run
end
main()
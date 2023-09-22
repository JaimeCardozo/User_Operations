require "./user.rb"
#create user
#view user points
#view operations
#
class List
    def initialize()
        @users = {}
    end
    
    def create_user(name)
        user = User.new(name)
        @users[name] = user
    end

    def add_points(user_name)
        @users[user_name].add_point()
    end

    def save_line(user_name, line)
        @users[user_name].save_operation(line)
    end

    def score(user_name)
        @users[user_name].points
    end

    def new_record(user_name, record)
        @users[user_name].new_recor(record)
    end

    def all_player
        #Organizeted
        #players = []
        #@users.each do |user|
        #    players.push(user.) 
        
    end

    def to_s
        "The users are: #{@users}"
    end
end

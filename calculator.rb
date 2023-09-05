require "./user.rb"
#create user
#view user points
#view operations
#
class Calculator
    def initialize(name)
        @users = {}
    end
    
    def create_user(name)
        user = User.new(name)
        @users[name] = user 
    end

    def add_points(user_name)
        @users[user_name]
    end
end
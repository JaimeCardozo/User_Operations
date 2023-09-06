require "./user.rb"
#create user
#view user points
#view operations
#
class Calculator
    def initialize()
        @users = {}
    end
    
    def create_user(name)
        user = User.new(name)
        puts user
        @users[name] = user
        puts @users 
    end

    def add_points(user_name)
        @users[user_name].add_point()
    end

    def save_line(user_name, line)
        @users[user_name].save_operation(line)
    end

    def to_s
        "The users are: #{@users}"
    end
end
users = Calculator.new
users.create_user("kike")
users.add_points("kike")
users.add_points("kike")
users.save_line("kike","2+2")
puts users
class User
    def initialize(name)
        @name = name
        @points = 0
        @operations = File.new("operations_#{name}.txt","w+")
    end

    def add_points
        @add_points = add_points + 100
    end

    def save_operation(line)
        @operations.
    end

    def to_s
        "The user #{@name} have #{@points} points"
    end
end
user = User.new("")

class User
    def initialize(name)
        @name = name
        @points = 0
        @operations = File.new("operations_#{name}.txt","w+")
    end

    def to_s
        "The user #{@name} have #{@points} points"
    end
end
user = User.new("")

class User
    attr :points
    def initialize(name= "")
        @name = name
        @points = 0
        @operations = File.new("operations_#{name}.txt","a+")
        @new_records
    end

    def add_point()
        @points = @points + 100
    end

    def save_operation(line)
        @operations.write(line)
    end

    def to_s
        "#{@name} --------------- #{@points}"
    end
end
user = User.new("jaime")
user.add_point
user.add_point
puts user.points
user.points = 500
puts user.points

class User
    def initialize(name= "")
        @name = name
        @points = 0
        @operations = File.new("operations_#{name}.txt","a+")
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
user1 = User.new("Sasuke")
user1.save_operation("BolaJuego\n")

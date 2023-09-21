class User
    attr :points
    def initialize(name= "")
        @name = name
        @points = 0
        @operations = File.new("operations_#{name}.txt","a+")
        if !File.file?("operations_kike.txt")
            file_record = File.new("record_#{name}.txt","w+")
            file_record.write("0")
            @record = 0
        else
            file_record = File.open("record_#{name}.txt")
            @record = file_record.gets
            file_record.close
        end
    end
    def add_point()
        @points = @points + 100
    end

    def save_operation(line)
        @operations.write(line)
    end

    def new_records(new_record)
        if new_record > @record
            @record = new_record
            file_record = File.open("record_#{@name}.txt","w+")
            file_record.write(@record)
        end
    end

    def to_s
        "#{@name} --------------- #{@points}"
    end
end

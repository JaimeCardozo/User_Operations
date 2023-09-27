class User
    attr :points
    def initialize(name= "")
        @name = name
        @points = 0
        if !File.file?("records./record_#{name}.txt")
            file_record = File.new(File.join(Dir.pwd, "/records/#{name}.txt"),"w+")
            file_record.write("0")
            file_record.write(name)
            file_record.close
            @record = 0
        else
            file_record = File.open(File.join(Dir.pwd, "/records/#{name}.txt"))
            @record = file_record.gets.to_i
            file_record.close
        end
    end
    def add_point()
        @points = @points + 100
    end

    def save_operation(line)
        @operations = File.open(File.join(Dir.pwd, "/records/operations_#{@name}.txt","a+"))
        @operations.write(line)
        @operations.close
    end

    def new_recor(new_record)
        puts new_record
        if new_record > @record
            @record = new_record
            file_record = File.open("#{@name}.txt","w+")
            file_record.write(@record)
            puts "Congratulations! New record, this is: #{@record}"
        end
    end

    def showOP
        if File.exists?("operations_#{@name}.txt")
            File.open("operations_#{@name}.txt") do |file|
                while line = file.gets
                    puts line
                end
            end
        else
            puts "The user #{@name} don't have good operations"
        end
    end

    def to_s
        "#{@name} --------------- #{@points}"
    end
end
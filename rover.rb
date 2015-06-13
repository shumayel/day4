class Rover

# Comment

    COMPASS = %w[N E S W]

def initialize(x, y, direction)
        @x, @y, @direction = x, y, direction
    end

    def read_instruction(movement)
        movement.each do |m|
            if m == "L"
                turn_left
            elsif m == "R"
                turn_right
            elsif m == "M"
                move
            else
                puts "Invalid instructions."
            end
        end
    end

    def move
        # if facing north want
        # to move y - 1
        if @direction == "N"
            @y += 1
        elsif @direction =="E"
            @x += 1
        elsif @direction == "S"
            @y -= 1
        elsif @direction== "W"
            @x -= 1
        else
            puts "Not a direction!"
        end
    end

    def turn_left
        if @direction == "E"
            @direction = "N"
        elsif @direction == "N"
            @direction = "W"
        elsif @direction == "S"
            @direction = "E"
        elsif @direction == "W"
            @direction = "S"
        end
    end

    def turn_right
        if @direction == "E"
            @direction = "S"
        elsif @direction == "N"
            @direction = "E"
        elsif @direction == "S"
            @direction = "W"
        elsif @direction == "W"
            @direction = "N"
        end
    end

    def to_s
        "#{@x}, #{@y}, #{@direction}"
    end
end


puts ""
puts "Rover 1 Output"
puts "---------------"
rover1 = Rover.new(1, 2, "N")
rover1.read_instruction(["L", "M", "L", "M", "L", "M", "L", "M", "M"])
puts "The location of Rover 1 is: #{rover1}."
puts ""
puts "Rover 2 Output"
puts "---------------"
rover2 = Rover.new(3, 3, "E")
rover2.read_instruction(["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"])
puts "The location of Rover 2 is: #{rover2}."
puts ""
class Rover


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

    def move(somevalue)
        # if facing north want to move y - 1
        if COMPASS == "N"
            @y += 1
        elsif COMPASS == "E"
            @x += 1
        elsif COMPASS == "S"
            @y -= 1
        elsif COMPASS == "W"
            @x += 1
        else
            puts "Not a direction!"
        end
    end

    def turn_left(derp)
        if direction == 0
            direction == 3
        end

        @direction -= 1
    end

    def turn_right
        if direction == 3
            direction == 0
        end
        @direction += 1
    end
end


puts "Rover 1 Output"
rover1 = Rover.new(1, 2, "N")
rover1.read_instruction(["L", "M", "L", "M", "L", "M", "L", "M", "M"])
puts ""
puts "Rover 2 Output"
rover2 = Rover.new(3, 3, "E")
rover2.read_instruction(["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"])
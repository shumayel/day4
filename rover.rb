class Rover


    COMPASS = %w[N E S W]

def initialize(x, y, direction)
        @x, @y, @direction = x, y, direction
    end

    def read_instruction(movement)
    if movement = "L"
        turn_left
    elsif movement = "R"
        turn_right
    elsif movement = "M"
        move
    else
        puts "Invalid instructions."
    end

    def move
        # if facing north want to move y - 1
        if COMPASS = "N"
            y = -1
        elsif COMPASS = "E"
            y = 1
        elsif COMPASS = "S"
            y = 1
        elsif COMPASS = "W"
            y = 1
    end

    def turn_left
        if direction = 0
            direction = 3
   end
        @direction -= 1
    end

    def turn_right
        if direction = 3
            direction = 0
        end
        @direction += 1
    end

end
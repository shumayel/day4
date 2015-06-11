# Person class created, name will be used in children classes (Studen, Instructor).

class Person
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def greeting
        "Hi my name is #{name}."
    end
end

# Student class created, child of Person. Defined learn method to puts "I get it!"

class Student < Person

    def initialize(name)
        super
    end

    def learn
        "I get it!"
    end
end

# Instructor class, created a teach method that puts "Everything in ruby is an object."

class Instructor < Person

    def initialize(name)
        super
    end

    def teach
        puts "Everything in Ruby is an Object."
    end
end


cristina = Student.new("Cristina")
chris = Instructor.new("Chris")

puts chris.greeting
puts cristina.greeting

puts cristina.learn
puts chris.teach

#Teach will not work on Cristina because her Object is Student, and that Object lacks the "teach" behaviour.
#Teach will not work on Chris because her Object is Instructor, and that Object lacks the "learn" behaviour.
class Parent
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def greeting
        "Hi my name is #{name}!"
    end
end

class Instructor < Parent

    def teach
            puts "Everything in Ruby is an Object."
    end

end

class Student < Parent

    def learn
            puts "I get it!"
    end

end


teacher = Instructor.new("Chris")
protege = Student.new("Cristina")
puts ""
puts "Teacher Introduction:"
puts "-------------------------"
puts teacher.greeting
puts ""
puts "Student Introduction:"
puts "-------------------------"
puts protege.greeting
puts ""
puts ""
puts "Lesson 1:"
puts "-------------------------"
teacher.teach
puts ""
puts "Student Comment/Question:"
puts "-------------------------"
protege.learn
=begin
def water_status(minutes)
    if minutes < 7
        puts "the water is not boiling yet."
    elsif minutes == 7
        puts "it's just barely boiling"
    elsif minutes == 8
        puts "It's boiling"
    else
        puts "Hot Hot Hot!"
    end
end

water_status(5)
=end

class Student
    attr_accessor :first_name, :last_name, :primary_phone_number

    def introduction(target)
        puts "Hi #{target}, I'm #{first_name}"
    end

    def favorite_number
        7
    end

end

frank = Student.new
frank.first_name = "Frank"
frank.introduction('Katrina')
puts "Frank's favorite number is #{frank.favorite_number}."
ary = Array.new(3, "hello")
puts "#{ary.fetch(2)}"
ary.drop(3)
puts "#{ary}"
ary.push("untrue")
ary.map! {|a| a + "hi"}
puts "#{ary}"


class Calculator
    def divide(number, other)
        number.to_f / other
    end
end
calculator = Calculator.new
puts calculator.divide(2, 3)

class Person
    def initialize(name)
        @name = name
        p self
    end
    def name
        @name
    end
    def greet (other, theOther)
        puts "Hi " + other.name + "! My name is " + self.name + ". This is " + theOther.name
    end

end

person = Person.new("Anja")
friend = Person.new("Carla")
another = Person.new("Martha")
person.greet(friend, another)

toast = Proc.new do |thing|
    puts "Cheers!!~" +thing + "!"
end

toast.call "Andrew"

def doSelfImportantly someProc, quote
    puts "Everybody HOLD ON. I have something to say"
    someProc.call quote
    puts "OK, I'm done, return to your business"
end

doSelfImportantly toast, "Andrew"


def doUntilFalse firstInput, someProc
    input = firstInput
    output = firstInput

    while output
        input = output
        output = someProc.call input
    end

    input
end

buildArrayOfSquares = Proc.new do |array|
    lastNumber = array.last
    if lastNumber <= 0
        false
    else
        array.pop
        array.push lastNumber*lastNumber
        array.push lastNumber-1
    end
end

alwaysFalse = Proc.new do |justIgnoreMe|
    false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse("I'm writing this at 3:00am; someone knock me out!", alwaysFalse)

def compose proc1, proc2
    Proc.new do |x|
        proc2.call(proc1.call(x))
    end
end

squareIt = Proc.new do |x|
    x * x
end

doubleIt = Proc.new do |x|
    x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)

class Array
    def eachEven(&wasABlock_nowAProc)
        isEven = true
        self.each do |object|
            if isEven
                wasABlock_nowAProc.call object
            end

            isEven = (not isEven)
        end
    end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
    puts "Yum!, I just love " +fruit+ " pies, don't you?"
end

[1,2,3,4,5].eachEven do |oddBall|
    puts oddBall.to_s+' is NOT an even number!'
end





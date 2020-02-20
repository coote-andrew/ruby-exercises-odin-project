numberArray = [1,2,3,4,5,6,7,8,9]

def multiples number
    total = 0
    number.times do |i|
        if i%3 ==0  || i%5 ==0 
            total = total + i
        end
    end
    total
end

puts multiples(1000)
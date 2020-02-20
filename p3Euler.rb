def largestPrime number
    highest = 1
    while number % 2 == 0 do
        number = number / 2
        highest = 2

    end
    while number.to_i > 1 do
        i = 3

        while i <= number do
            if number % i == 0
                number = number / i
                highest = i
            end
            i = i + 1
        end
        
    end
    highest
end

puts largestPrime(600851475143)
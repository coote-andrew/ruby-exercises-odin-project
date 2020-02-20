def evenFibonacci maxValue
    total = 0
    isEven = false
    currentValue = 1
    x = 1
    while currentValue.to_i < maxValue do
        currentValue = Fibonacci(x)
        x = x + 1
        if currentValue.to_i < maxValue
            if currentValue % 2 == 0
                total = total + currentValue

            end
        end
    end
    puts total
end

def Fibonacci termNumber
    results = [1,1]
    if termNumber < results.length
        value = results[termNumber]
    else
        value = Fibonacci(termNumber -1).to_i + Fibonacci(termNumber -2).to_i
        results << value
    end
    value

end

puts evenFibonacci(4000000)
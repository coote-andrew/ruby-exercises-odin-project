def grandfatherClock name, &block
    time =  (Time.now.hour + 1) % 12
    time.times do
        block.call
        puts "DONG"
    end
    puts "performed " +name+ " " +time.to_s+ " times"
    
end    
    
=begin   
grandfatherClock 'count to a million' do
    number = 0

    1000000.times do
        number = number + 1
    end
    puts number
end

=end

def programLogger name, &block
    puts "Beginning " +name
    value = block.call
    puts "Block finished, returning: "
    puts value
    
end

programLogger 'count to a million' do
    number = 0

    1000000.times do
        number = number + 1
    end
    number
end

$nesting = 0
def betterProgramLogger name, &block

    puts "   "* $nesting +"Beginning " +name+" ..."
    $nesting = $nesting + 1
    value = block.call
    $nesting = $nesting -1
    puts "   "* $nesting +"..."+name+" finished, returning " + value.to_s
end

betterProgramLogger 'count to a million' do
    number = 0

    1000000.times do
        number = number + 1
    end
    number
end


betterProgramLogger 'outer block' do

    betterProgramLogger 'some little block' do
    
        betterProgramLogger 'teeny-tiny block' do
    'lots of love'
    end
    
    42
    end
    
    betterProgramLogger 'yet another block' do
    'I love Indian food!'
    end
    
    true
end
def ask_floor
    puts "enter an odd number!"
    print "> "
    number = gets.chomp.to_i
    while number%2 == 0
        puts "need an odd number!"
        print "> "
        number = gets.chomp.to_i
    end
    return number
end

def half_pyramid(number)
    number.times do |i|
        puts " " * (number-i-1) + "#" * (i+1)
    end
end

def full_pyramid(number)
    number.times do |i|
        puts " " * (number-i) + "#" * (i+1) + "#" *(i)
    end
end


def wtf_pyramid(number)
    number = (number + 1)/2
    (number-1).times do |i|
        puts " " * (number-i) + "#" * (i+1) + "#" *(i)
    end
    number.times do |i|
        puts " " * (i + 1) + "#" * (number - i) +  "#" * (number - i - 1)
    end
end


def perform
    number = ask_floor
    #half_pyramid(number)
    #full_pyramid(number)
    wtf_pyramid(number)
end

perform
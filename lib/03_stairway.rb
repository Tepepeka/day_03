def number
    rand(1..6)
end

def movement(number)
    if number >= 5
        puts "u go up!"
        return 1
    elsif number == 1
        puts "u go down!"
        return -1
    else
        puts "no move!"
        return 0
    end
end

def show_state(floor)
    puts "u are @#{floor}th floor"
end

def is_win?(floor)
    if floor == 10
        return true
    else
        return false
    end
end

def play
    puts "Welcome"
    floor = 1
    show_state(floor)
    loop_number = 0
    while(!is_win?(floor)) do
        puts "press [enter] to play"
        gets.chomp
        if floor == 0 && movement(number) == -1
            floor = 0
        else
            floor = floor + movement(number)
            show_state(floor)
        end 
        loop_number += 1
    end

    puts "YOU WIN"
    return loop_number
end

def average_finish_time
    100.times do play
        nombre de loupe diviser par le nombre de win
    end
end

def perform
    play
end

perform
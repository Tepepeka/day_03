def number()
    rand(1..6)
end

def move(number)
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

def play()
    puts "Welcome"
    floor = 0
    show_state(floor)
    loop_number = 0
    while(!is_win?(floor)) do
        #puts "press [enter] to play"
        #gets.chomp
      
            floor = floor + move(number)

            if floor < 0
                floor = 0
                show_state(0)
            else
                show_state(floor)
            end

        loop_number += 1
    end

    puts "YOU WIN"
    return loop_number
end

def average()
    total_loop = 0
    10.times do |i|
        puts "Game n°#{i+1}"
        score = play()
        total_loop += score
    end
    average = total_loop / 10.0
    return puts "average finish time is:#{average} loops"
end

def perform()
    average()
end

perform 
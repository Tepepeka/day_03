def ask_first_name
    puts "wath's ur name?"
    print "> "
    name = gets.chomp.to_s
end

def hello(name)
    puts "hi #{name}!"
end

def perform
    name = ask_first_name
    hello(name)
end

perform
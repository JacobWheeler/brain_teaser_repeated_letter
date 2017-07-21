
def word_logic
    counter = 0
    repeated_word = []

    @array.each do |word|
    possible = word.length - word.split('').uniq.length
    if possible > counter 
        repeated_word = [word]
        counter = possible
    elsif possible === counter
        repeated_word.push(word)
        
    end
end
puts repeated_word
menu
end

def menu_decision
    input = gets.strip.to_i
        if input === 1
            puts "What is your input?"
            word = gets.strip.to_s 
            @array = word.split(' ')
            word_logic
        elsif input === 2
            exit
        else
            puts "Input error please put 1 or 2 for your desired function"
            user_input
        end
end

def menu
    puts "#### Letters Menu ####"
    puts "1) Your input"
    puts "2) Exit"
    menu_decision
end

menu
class Game
    def initialize
        spaces = [[Space.new, Space.new, Space.new], [Space.new, Space.new, Space.new], [Space.new, Space.new, Space.new]]
        @game_board = Board.new(spaces)
        @turn_counter = Counter.new
    end
    def turn
        loop do
            puts @gameboard.output
            puts "Turn #{@turn_counter.num}"
            input = gets.chomp.to_i
            if @game_board.position(input) != nil
                if @game_board.position(input).value == 0
                    if @turn_counter.num.odd?
                        @game_board.position(input).set_value(1)
                    else
                        @game_board.position(input).set_value(2)
                    end
                    @turn_counter.add
                    if @game_board.check_complete
                        puts 'YAY THE GAME IS OVER'
                        puts @gameboard.output
                        exit
                    else
                        next
                    end
                    break
                else
                    puts 'Type the number of an empty space please'
                end
            else
                puts 'Type a whole number between 1 and 9 please'
            end
        end
    end
end
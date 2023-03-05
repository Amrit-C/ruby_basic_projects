class TicTacToe

    @@turn_counter = 1

    def initialize
        puts "Player 1 Name: "
        @player1 = gets.chomp
        puts "\n"
        puts "Player 2 Name; "
        @player2 = gets.chomp
        @board = Array.new(3) {Array.new(3,"-")}
        display

        @legend = Hash["X": @player1, "O": @player2]

    end

    def display
        puts "\n"
        puts "#{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
        puts "#{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
        puts "#{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
        puts "\n"
    end

    def turn

        #Player 1's Turn
        if @@turn_counter.odd?
            logo = "X"
            puts "\n"
            puts "Player 1's Turn. Enter coordinates: "
            @coordinates = gets.chomp.split(",")
            if @board[@coordinates[0].to_i][@coordinates[1].to_i] === "-"
                @board[@coordinates[0].to_i][@coordinates[1].to_i] = logo
                @@turn_counter += 1
                display
                turn
            else 
                puts "\n"
                puts "This spot is already taken."
                turn
            end
            display

        # Player 2's Turn
        else 
            logo = "O"
            puts "\n"
            puts "Player 2's Turn. Enter coordinates: "
            @coordinates = gets.chomp.split(",")
            if @board[@coordinates[0].to_i][@coordinates[1].to_i] === "-"
                @board[@coordinates[0].to_i][@coordinates[1].to_i] = logo
                @@turn_counter += 1
                display
                turn
            else 
                puts "\n"
                puts "This spot is already taken."
                turn
            end
            display
        end
    end

end

start = TicTacToe.new()
start.turn


class TicTacToe

    def initialize
        puts "Player 1 Name: "
        @player1 = gets.chomp
        puts "Player 2 Name; "
        @player2 = gets.chomp

        @board = Array.new(3) {Array.new(3,"-")}
    end

    def display
        puts "#{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
        puts "#{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
        puts "#{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
        puts ""
    end


end

start = TicTacToe.new()
start.display

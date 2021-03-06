def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  user_input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
  if (index < 0 || index > 8)
    false
  elsif (position_taken?(board, index) == true)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    true
  else
    false
  end
end

board = ["", "", "", "", "", "", "", "", ""]

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if (valid_move?(board, index) == true)
    move(board, index, player = "X")
    display_board(board)
  else
    puts "Invalid move. Please try again!"
    user_input = gets.strip
  end
end
    
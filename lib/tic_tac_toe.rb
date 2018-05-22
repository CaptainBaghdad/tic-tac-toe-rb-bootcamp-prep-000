WIN_COMBINATIONS = 
[0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  
 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 



def input_to_index(user_input)
  if user_input.to_i == nil 
    return -1 
  end
  a = user_input.to_i 
  return a-1
  
end 



def move(board, pos ,token)
  board[pos] = token
  
end 


def position_taken?(board,pos)
  board[pos] != " "
  
  
  
end 


def valid_move?(board, pos)
   board[pos] == " " && pos >= 0  
  
  
end 

def turn(board) 
  puts "Please chose a number 1-9."
  inni = gets.strip
  
  if input_to_index(inni) < 0 || input_to_index(inni) == nil
    puts "Please chose a number 1-9."
    inni = gets.strip
    
  end 
  
  move(board,inni)
    display_board(board)
  
  
end  













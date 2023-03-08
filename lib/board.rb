# This method creates the chess board and controls the board
class Board
  attr_reader :board

  def make_board
    arr = []
    row = []
    black = "\e[34m\u2588\u2588\e[0m"
    white = "\e[40m\u2588\u2588\e[0m"
    70.times do |i|
      row << black if i.even?
      row << white if i.odd?
      next if row.length < 8

      arr << row
      row = []
      return arr if arr.length == 8

      redo
    end
  end

# Board.new

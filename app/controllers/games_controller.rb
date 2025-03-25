class GamesController < ApplicationController
  def new
    @letters = (('A'..'Z').to_a + ['A', "E", 'I', 'O', 'U']).sample(10)
  end
  def score
    @word = params[:word].upcase
    @letters = params[:letters]
    result = @word.chars.all? do |letter|
      @word.count(letter) <= @letters.count(letter)
    end
    if result
      @message = "You won!"
    else
      @message = "You lost"
    end
  end
end

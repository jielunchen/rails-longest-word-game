class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.shuffle[5, rand(6..10)].join
  end

  def score

raise
 @word = params[:word]
#find a way to get letters from grid to score
@letters = params[:letters].split
match = @word.chars.all? do |a|
  @letters.include? a
end


#compare submission with letter sin grid

@submission = params[:submission]
   url = "https://wagon-dictionary.herokuapp.com/"
   api_guess = url + @submission
   user_serialized = open(api_guess).read
   user = JSON.parse(user_serialized)

  end
end

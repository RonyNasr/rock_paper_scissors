require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/rock_paper_scissors')
require('pry')

get('/') do
  erb(:form)
end

get('/rock_paper_scissors') do

  @first_hand = params.fetch("hand_one")
  @second_hand = ["rock","paper","scissors"][rand(3)];
  @result = @first_hand.beats?(@second_hand)

  if @result.==("tie")
    @result = "You have a tie!"
  elsif @result
    @result = "You Win!!"
  else
    @result = "Computer Wins :("
  end

  erb(:rock_paper_scissors)
end

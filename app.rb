require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  @computer_choice = ["rock", "paper", "scissors"].sample
  @outcome = ""

  if @computer_choice == "paper"
    @outcome = "We lost!"
  elsif @computer_choice == "scissors"
    @outcome = "We win!"
  else
    @outcome = "We tied!"
  end

  erb(:rock)
end

get("/paper") do
  @computer_choice = ["rock", "paper", "scissors"].sample
  @outcome = ""

  if @computer_choice == "paper"
    @outcome = "We tied!"
  elsif @computer_choice == "scissors"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end

  erb(:paper)
end

get("/scissors") do
  @computer_choice = ["rock", "paper", "scissors"].sample
  @outcome = ""

  if @computer_choice == "paper"
    @outcome = "We won!"
  elsif @computer_choice == "scissors"
    @outcome = "We tied!"
  else
    @outcome = "We lost!"
  end

  erb(:scissors)
end

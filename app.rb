require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  ""
end

get("/paper") do
  ""
end

get("/scissors") do
  ""
end

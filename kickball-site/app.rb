require "sinatra"
require_relative "models/player"
require_relative "models/team"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  erb :layout
end

get "/teams" do
  teams = @teams.team
  erb :teams_one
end

get "/teams/:team_name" do
  @players = Team.players
  @name = params[:team_name]
  index :teams_one
end

get "/positions" do
  @positions = Team.positions
  erb :positions_one
end

get "/positions/:position_name" do
  @players = Team.players
  @position = params[:position]
  erb :positions_two
end

get "/players" do
  @players = Team.players
  erb :teams_two
end

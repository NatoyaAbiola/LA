require_relative "../lib/team_data"
require_relative "player"

require 'pry'

class Team
  attr_reader :name
  def initialize(name)
    @name = name
  end

#Teams
  def self.team
    @teams = []
    TeamData.to_h.each do |team_name, players|
      @teams << Team.new(team_name)
    end
  @teams
end


# Players
  def self.player
    @players =[]
    TeamData.to_h.each do |team_name, player|
      player.each do |position, name|
        @players << Player.new(team_name, player, position)
      end
    end
    @players
  end

#Positions
  def self.positions
    positions = []
    TeamData.to_h.each do |team_name, players|
      players.each do |player|
        position = player[0]
        positions << position
      end
    end
    @positions
  end
end

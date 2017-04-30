require_relative "../lib/team_data"
require 'json'
require 'pry'

class Player
  attr_reader :name, :position, :team_name

  def initialize (name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.player
    @player =[]
    TeamData.to_h.each do |team_name, players|
      player.each do |position, name|
        if @name == team
        @player << Player.new(name,position,team_name)
      end
    end
  end
    @player
end
end

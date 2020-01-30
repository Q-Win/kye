class TeamController < ApplicationController

  def index
    @champ_names = champ_names
  end

  def enemy
    binding.pry
  end

  private

  def champ_names
    def conn
      Faraday.new(url: 'http://ddragon.leagueoflegends.com/cdn/10.2.1/data/en_US/champion.json').get
    end

    JSON.parse(conn.body, symbolize_names: true)[:data].keys
  end

end

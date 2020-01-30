class TeamController < ApplicationController

  def index
    @champ_names = champ_names
  end

  def enemy
    @champ_1 = champ_data(params[:champ1])
    @champ_2 = champ_data(params[:champ2])
    @champ_3 = champ_data(params[:champ3])
    @champ_4 = champ_data(params[:champ4])
    @champ_5 = champ_data(params[:champ5])
    binding.pry
  end

  private

  def champ_names
    def conn
      Faraday.new(url: 'http://ddragon.leagueoflegends.com/cdn/10.2.1/data/en_US/champion.json').get
    end

    JSON.parse(conn.body, symbolize_names: true)[:data].keys
  end

  def champ_data(champ_name)

    def conn(champ_name)
      url = "http://ddragon.leagueoflegends.com/cdn/10.2.1/data/en_US/champion/" + champ_name + ".json"
      Faraday.new(url: url).get
    end

    JSON.parse(conn(champ_name).body, symbolize_names: true)
  end

end

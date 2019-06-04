require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    hash = {
      name: "Team Name",
      coach: "Coach",
      pg: "Point Guard",
      sg: "Shooting Guard",
      pf: "Power Forward",
      sf: "Small Forward",
      c: "Center"
    }
    @arr = params.inject([]) do |arr, (k,v)|
      arr << "#{hash[k.to_sym]}: #{v}"
      arr
    end
    erb :team
  end
end

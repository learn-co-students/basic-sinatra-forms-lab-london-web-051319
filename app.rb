require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team = "Team Name: #{params["name"]}
             Coach: #{params["coach"]}
             Point Guard: #{params["pg"]}
             Power Forward: #{params["pf"]}
             Shooting Guard: #{params["sg"]}
             Center: #{params["c"]}
            "
    erb :team
  end

end

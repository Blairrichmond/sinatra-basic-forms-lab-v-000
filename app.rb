require_relative 'config/environment'
require_relative ''

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
    @puppy = Puppy.new(params[user])
  end

end

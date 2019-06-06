require_relative 'config/environment'

class App < Sinatra::Base


  get '/user_input' do
    erb :user_input
  end

  get '/user_input/piglatin' do
    erb :piglatin
  end

  post '/user_input' do
    piglatin = Piglatinizer.new
    @phrase = params[:phrase]
    piglatin.piglatinize(@phrase)
    redirect('/user_input/piglatin')
  end
end

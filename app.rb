require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    obj = new PigLatinizer(params[:user_text])
    @piglatinized_text = obj.analyze
    erb :output
  end
end

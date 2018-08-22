require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    obj = PigLatinizer.new(params[:user_text])
    @piglatinized_text = obj.piglatinize
    erb :output
  end
end

require_relative 'config/environment'

class App < Sinatra::Base

  # create get route in '/' to display the form user_input
  get '/' do
    erb :user_input
  end


  # create post route in /piglatinize to create an instance of piglatinizer and
  # @piglatinize = PigLatinizer.new(params[:user_phrase])
  #
  # display the results of the piglatinization
  # erb :piglatinized
end

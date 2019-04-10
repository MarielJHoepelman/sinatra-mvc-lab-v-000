require_relative 'config/environment'

class App < Sinatra::Base

  # create get route in '/' to display the form user_input
  # erb :user_input

  # create post route in /piglatinize to create an instance of piglatinizer and
  # @piglatinize = PigLatinizer.new(params[:user_phrase])
  #
  # display the results of the piglatinization
  # erb :piglatinized
end

require 'sinatra'
require './birthday_countdown.rb'

get '/' do
  @countdown = BirthdayCountdown.new(3,18)
  erb @countdown.to_view
end


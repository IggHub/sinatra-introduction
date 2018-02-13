require 'rubygems'
require 'sinatra'

#prints "Hello World" on root
get '/' do
  "Hello World"
end

#prints views/about.erb html template
get '/about' do
  erb :about
end

#prints views/contact.erb html template
get '/contact' do
  erb :contact
end

#prints the parameter after /reverse/ in reverse
get '/reverse/:string' do
  params[:string].reverse
end

#prints the parameter after /upcase/ in upcase
get '/upcase/:string' do
  params[:string].upcase
end

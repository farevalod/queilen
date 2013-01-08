require 'sinatra'
require 'haml'
require 'sinatra/activerecord'
require './models.rb'

set :database, 'sqlite3:///queilen.sqlite3'

get '/' do
  haml :index
end
get '/la-papa' do
  haml :la_papa
end
get '/tipos-de-papa' do
  haml :papas, :locals => {:overa => overa}
end
get '/cocina' do
  haml :cocina
end
get '/tu-huerto' do
  haml :huerto
end
get '/sobre-nosotros' do
  haml :about
end
get '/contacto' do
  haml :contact
end


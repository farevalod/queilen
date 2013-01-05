require 'sinatra'
require 'haml'

get '/' do
  haml :index
end
get '/tipos-de-papa' do
  haml :papas
end
get '/cocina' do
  haml :cocina
end
get '/tu-huerta' do
  haml :huerta
end
get '/sobre-nosotros' do
  haml :about
end
get '/contacto' do
  haml :contact
end


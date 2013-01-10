require 'sinatra'
require 'haml'
require 'sinatra/activerecord'
require './models.rb'

set :database, 'sqlite3:///queilen.sqlite3'

get '/' do
  @papas = Papa.all()
  haml :index
end
get '/la-papa' do
  haml :la_papa
end
get '/tipos-de-papa' do
  @papas = Papa.all()
  haml :papas
end
get '/cocina' do
  @categorias = Categoria.all()
  haml :cocina
end

get '/recetas/categorias/:id' do
  @categorias = Categoria.all()
  @categoria = Categoria.find(params[:id])
  @recetas = Receta.where("category_id = ?", params[:id])
  haml :recetas
end
get '/recetas/:id' do
	@ic = Iconv.new('UTF-8', 'UTF-8')
    @categorias = Categoria.all()
	@receta = Receta.find(params[:id])
	haml :receta
end
get '/condimentos' do
    @categorias = Categoria.all()
	@condimentos = Condimento.all()
	haml :condimentos
end
get '/condimentos/:id' do
	@condimento = Condimento.find(params[:id])
	haml :condimento
end

get '/cortes' do
    @categorias = Categoria.all()
	@cortes = Corte.all()
	haml :cortes
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


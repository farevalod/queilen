require 'sinatra'
require 'haml'
require 'sinatra/activerecord'
require './models.rb'

set :bind, 'queilennativa.cl'
set :database, 'sqlite3:///queilen.sqlite3'
set :default_icon, "favicon.ico"

get '/' do
  @papas = Papa.all()
  @info = Infohome.random
  haml :index
end
get '/la-papa/:id' do
  @categorias = Categoriaspapa.all()
  @categoria = Categoriaspapa.find(params[:id])
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
    @categorias = Categoria.all()
	@receta = Receta.find(params[:id])
    @categoria = Categoria.find(@receta.category_id)
	haml :receta
end
get '/condimentos' do
    @categorias = Categoria.all()
	@condimentos = Condimento.order(:name).all()
	haml :condimentos
end
get '/condimentos/:id' do
	@condimento = Condimento.find(params[:id])
	haml :condimento
end

get '/cortes' do
    @categorias = Categoria.all()
	@cortes = Corte.order(:name).all()
	haml :cortes
end

get '/papa-lover' do
  haml :papa_lover
end
get '/huerto' do
  haml :huerto
end
get '/sobre-nosotros' do
  haml :about
end
get '/contacto' do
  haml :contact
end


require 'sinatra'
require 'imdb'
require 'awesome_print'
require 'sinatra/reloader' if development?
require 'pry'


get '/' do 
	erb :index
end

post '/search_term' do 
	@search = Imdb::Search.new(params[:search_term])
	@all_search_results =  @search.movies
	@nineMovies = @all_search_results[0..8]
	# ap @search.movies.class
	# ap @search.movies.size
	binding.pry
end 
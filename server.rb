require 'sinatra'
require 'imdb'
require 'awesome_print'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './lib/poster_populator' #topNine defined here

enable :sessions


get '/' do 
	erb :index
end

post '/search_term' do 
	@search = Imdb::Search.new(params[:search_term])
	@all_search_results =  @search.movies
	# @nineMovies = @all_search_results[0..50]
	@poster_movies = topNine(@all_search_results)
	session[:error] = @poster_movies[:error]
	@poster_movies = @poster_movies[:movies]
	session[:movies] = @poster_movies.map{|movie| movie.poster} #(&:poster)

	

	
	# ap @search.movies.class
	# ap @search.movies.size
	redirect to('/poster')
end 

get('/poster') do 

	@movies = session[:movies]
	@error = session[:error]
	erb :poster


end 
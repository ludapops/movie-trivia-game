require_relative '../lib/poster_populator'
require 'pry'

class Movie
	attr_reader(:poster)

	def initialize(poster, name)
		@poster = poster
		@name = name
	end

    def ==(movie)

        return @poster == movie.poster

    end
end

RSpec.describe "poster populator" do

	it "checks that the array has 9 movies with posters" do
		all_movies = [ Movie.new("yes", "movie1"), Movie.new(nil, "movie2"),  Movie.new(nil, "movie2"),Movie.new("yes", "movie3"),
		Movie.new("yes", "movie4"),Movie.new("yes", "movie5"), Movie.new(nil, "movie2"), Movie.new("yes", "movie6"),
		Movie.new("yes", "movie7"), Movie.new("yes", "movie8"), 
		Movie.new("yes", "movie9"), Movie.new("yes", "movie10")]

		x = topNine(all_movies) 
		expect(x[:movies]).to be == ([Movie.new("yes", "movie1"), Movie.new("yes", "movie3"), Movie.new("yes", "movie4"),
			Movie.new("yes", "movie5"),  Movie.new("yes", "movie6"), Movie.new("yes", "movie7"),
			Movie.new("yes", "movie8"), Movie.new("yes", "movie9"), Movie.new("yes", "movie10")])
	end

	it "if there are less than nine movie posters post the available posters and a sorry message" do 
		all_movies = [ Movie.new(nil, "movie1"), Movie.new(nil, "movie2"),  Movie.new(nil, "movie3"),
			Movie.new(nil, "movie4"),Movie.new(nil, "movie5"),Movie.new(nil, "movie6"), 
			Movie.new(nil, "movie7"), Movie.new(nil, "movie8"),
			Movie.new(nil, "movie9"), Movie.new(nil, "movie10"), 
			Movie.new("yes", "movie11"), Movie.new("yes", "movie12")]
		x = topNine(all_movies)
		expect(x[:error]).to be == ('sorry there werent enough movies')
		expect(x[:movies]).to be == ([Movie.new("yes", "movie11"), Movie.new("yes", "movie12")])
 	end
end



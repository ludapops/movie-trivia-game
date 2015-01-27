class Movie
	attr_reader(:poster)

	def initialize(poster, name)
		@poster = poster
		@name = name
	end
end


first = [Movie.new("yes", "movie1"), Movie.new("yes", "movie3"), Movie.new("yes", "movie4"),
			Movie.new("yes", "movie5"),  Movie.new("yes", "movie6"), Movie.new("yes", "movie7"),
			Movie.new("yes", "movie8"), Movie.new("yes", "movie9"), Movie.new("yes", "movie10")]

second = [Movie.new("yes", "movie1"), Movie.new("yes", "movie3"), Movie.new("yes", "movie4"),
			Movie.new("yes", "movie5"),  Movie.new("yes", "movie6"), Movie.new("yes", "movie7"),
			Movie.new("yes", "movie8"), Movie.new("yes", "movie9"), Movie.new("yes", "movie10")]

first = [1,2,Movie.new("sldfsdfsd", "Kill Bill")]
second = [1,2,Movie.new("sldfsdfsd", "Kill Bill")]

p first == second
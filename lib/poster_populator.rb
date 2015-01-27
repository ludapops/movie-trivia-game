def topNine(array)
	nineMovies = []
	sorry_message = "Sorry there wasnt enough posters to populate this page"

	count = 0
		array.each do |movie|
			count += 1
			p({length: nineMovies.length, count: count}) 
			if nineMovies.length < 9 && movie.poster != nil
				nineMovies.push(movie)
				
			end 

		end
	
	
	if nineMovies.length != 9
		{movies: nineMovies, error: 'sorry there werent enough movies'}
	else 
		{movies: nineMovies}
	end 
end

# ask nizar why the error message isnt showing 



# x = [Movie.new("yes", "movie1"), Movie.new("yes", "movie3"), Movie.new("yes", "movie4"),
	# 		Movie.new("yes", "movie5"),  Movie.new("yes", "movie6"), Movie.new("yes", "movie7"),
	# 		Movie.new("yes", "movie8"), Movie.new("yes", "movie9"), Movie.new("yes", "movie10")]

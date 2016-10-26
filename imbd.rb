require 'imdb'
require 'pry'

movieslist = []
movieslist << File.read('movies.txt')

arr_movies = movieslist[0].split("\n")


result = arr_movies.map do |movie|
	Imdb::Search.new(movie).movies[0].rating
end

a = 10
while a > 0
	result.each do |x|
		if x >= a
			print "|x"
		else print "| "
		end
		
	end
	puts "|"
	a -= 1
end


puts "--" * (result.length + 1)

result.each_with_index do |value, index|
	print "|#{index+1}"

end
puts "|"




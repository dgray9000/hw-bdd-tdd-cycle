Given /the following movies exist:/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end

When /^I go to the edit page for "(.*)"$/ do |m|
    movie = Movie.find_by title: m
    visit edit_movie_path(movie.id)
end

Then /^the director of "(.*)" should be "(.*)"/ do |movie, director|
   Movie.find_by_title(movie).director == director
end

#Given /^I am on the details page for "(.*)"$/ do |m|
#    visit movie_path(Movie.find_by_title(m).id)
#end


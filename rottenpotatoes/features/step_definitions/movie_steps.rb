Given (/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|
    Movie.create movie
  end
end

Then (/the director of "(.*?)" should be "(.*?)"/) do |movie, director|
  expect(movie.director).to eq director
end
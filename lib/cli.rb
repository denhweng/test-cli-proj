class CLI
  
  def call
    welcome 
  end 
  
  def welcome
    puts "Welcome to IMDB!"
    puts "Let's see the top movies and their box office success so far."
    Scraper.scrape_movies
    show_movies
    select_movie
  end 
  
  def show_movies 
    Movie.all.each.with_index(1) do |movie, i|
     puts "#{i}. #{movie.title}"
    end 
  end
  
  def select_movie
    puts "Please select a movie to see more about it."
    input = gets.chomp 
    
    selected_movie = Movie.all[input.to_i - 1]
    
    if !selected_movie
      puts "Not a valid selection."
      select_movie
    else
      Scraper.scrape_movie_details(selected_movie)
      puts "Awesome. Here are all the details for that movie."
      puts "-- Rating: #{selected_movie.rating}"
      puts "-- Runtime: #{selected_movie.runtime}"
      puts "-- Summary: #{selected_movie.summary}"
      select_movie
      
    end 
    
  end 
  
end
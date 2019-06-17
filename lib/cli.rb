class CLI
  
  def call
    welcome 
  end 
  
  def welcome
    puts "Welcome to IMDB!"
    puts "Let's see the top movies and their box office success so far."
    Scraper.scrape_movies
    sleep 1 
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
      puts "Not a valid selection. If you are done, type 'exit'. Otherwise:"
      select_movie
    elsif input == "exit"
      goodbye
    else 
      Scraper.scrape_movie_details(selected_movie)
      puts "Here are all the details for #{selected_movie.title}."
      puts "-- Release Date: #{selected_movie.release_date}"
      puts "-- Audience: #{selected_movie.audience}" 
      puts "-- Rating: #{selected_movie.rating}"
      puts "-- Runtime: #{selected_movie.runtime}"
      puts "-- Summary: #{selected_movie.summary}"
      sleep 2
      puts "-----------------------------"
      puts "If you are done, please type 'exit'. Otherwise:"
      select_movie
    end
  end 
   
  def goodbye  
    puts "Thank you for using IMDB CLI! :) Happy watching!"
  end 
  
end
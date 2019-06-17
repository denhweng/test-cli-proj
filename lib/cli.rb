class CLI
  
  def call
    welcome 
    # start
  end 
  
  def welcome
    puts "Welcome to IMDB!"
    puts "Let's see the top movies and how they're doing at the box office so far."
    Scraper.scrape_movies
    show_movies
  end 
  
  def show_movies 
    Movie.all.each.with_index(1) do |movie, i|
     puts "#{i}. #{movie.title}"
    end 
  end
  
  
end
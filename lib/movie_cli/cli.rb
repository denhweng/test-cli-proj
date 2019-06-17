class CLI
  
  def call
    # Scraper.scrape_shoes_by_brand #scrapes the shoes before welcome is puts'd in the console 
    welcome 
    # start
  end 
  
  def welcome
    puts "Welcome to IMDB!"
    puts "Let's see what movies are playing now."
  end 
  
  def start 
    puts "What brand would you like to search? Adidas, Jordan, Nike, Asics, Balenciaga, Converse, New Balance, Puma, Reebok, Saucony, UnderArmour, or Vans?"
    input = gets.chomp 
    #if I've already scraped this brand before, how would I know so that I don't scrape again? 
    Scraper.scrape_shoes_by_brand
  end
  
  
end
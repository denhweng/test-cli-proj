class StockXSneakers::CLI 
  
  def call
    Scraper.scrape_shoes #scrapes the shoes before welcome is puts'd in the console 
    welcome
  end 
  
  def welcome 
    puts "Welcome to StockX, the biggest market for rare shoes. Let's see if the shoes you're looking for are available."
  end 
end 
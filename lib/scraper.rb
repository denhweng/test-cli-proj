require 'pry'
require 'open-uri'
require 'nokogiri'

class Scraper
  
  def self.scrape_movies
    
  html = open("https://www.imdb.com/")
  doc = Nokogiri::HTML(html)
  doc.css(".rhs-body")[1].css(".rhs-row").each do |mov|
    title = mov.css(".title").text.strip
    url = mov.css(".title a").attribute("href").value
    Movie.new(title, url)
    
  end 
  end 
  
  def self.scrape_movie_details
  end 
  
end 
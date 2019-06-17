require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  puts "Welcome to IMDB!"
    puts "Let's see what movies are playing now."
  
  
  html = open("https://www.imdb.com/")
  doc = Nokogiri::HTML(html)
  doc.css(".rhs-body")[1].css(".rhs-row").each do |mov|
    title = mov.css(".title").text.strip
    Movie.new(title)
  end 
  
  Movie.all.each.with_index(1) do |title, i|
    puts "#{i}. #{title}"
  end 
  
  
end 
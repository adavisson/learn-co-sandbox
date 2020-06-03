require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://web.archive.org/web/20160227204808/http://flatironschool.com/team"))

instructors = doc.css("#instructors .team-holder .person-box")

instructors.each do |instructor|
  puts "Flatiron School <3 " + instructor.css("h2").text
end

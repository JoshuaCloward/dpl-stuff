require 'mechanize'
require 'pry'
require 'yaml'

# browser = Mechanize.new
#
# google = browser.get('http://www.google.com')
# form = google.form_with(action: '/search')
# text_field = form.field_with(name: 'q')
# text_field.value = 'Ruby on Rails'
# results_page = form.submit
# puts "Total Links Found: #{results_page.links.count}"
#
# result_links = results_page.search('#search h3.r a')
# puts result_links.count
# links = []
#
# result_links.each do |link|
#   url = link['href'].gsub('/url?q=', '')
#   links << {url: url, text: link.text}
# end
#
# File.open('tuts.yml', 'w+') do |f|
#   f.write(links.to_yaml)
# end
# puts 'done!'

###########################################
# attributes = [
#   biz = {
#     name: '',
#     address: '',
#     phone: ''
#   }
# ]
# 10.times do
#   biz[:name] = title[i].text
#   biz[:address] = address[i].text.strip
#   biz[:phone] = phone[i].text.strip
#   attributes << biz
#   i += 1
# end
###########################################
browser = Mechanize.new
yelp = browser.get('http://www.yelp.com')
form = yelp.form_with(action: '/search')
text_field = form.field_with(name: 'find_desc')
text_field.value = "Taco"
results_page = form.submit
puts "Total Links Found: #{results_page.links.count}"

#find the name
title = results_page.search('.search-result-title .indexed-biz-name .biz-name')

#find the secondary information
secondary = results_page.search('.secondary-attributes')

#find the address
address = secondary.search('address')

#find the phone
phone = secondary.search('.biz-phone')

biz = {name: '', address: '', phone: ''}
i = 0
10.times do
   biz[:name] = title[i].text
   biz[:address] = address[i].text.strip
   biz[:phone] = phone[i].text.strip
  File.open('yelp.yml', 'a+') do |f|
    f.write(biz.to_yaml)
  end
  puts "done!"
  i += 1
end

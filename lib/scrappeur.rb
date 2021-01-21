
require 'rubygems'
require 'nokogiri'
require 'open-uri'


def scrap
    url = "https://coinmarketcap.com/all/views/all/"
    page = Nokogiri::HTML(URI.open(url).read)
    arr_name = page.xpath('//*[@class="cmc-table-row"]//td[3]/div').map{|element| element = element.text}
    arr_value = page.xpath('//*[@class="cmc-table-row"]//td[5]/div').map{|element| element = element.text}

    arr_final_value = arr_value.map

    hash_final = Hash[arr_name.zip(arr_final_value.map)]


end

puts scrap

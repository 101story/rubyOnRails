require 'httparty'
require 'json'

url="http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo="

response = HTTParty.get(url)
jsonData = JSON.parse(response.body)

arr = Array.new
jsonData.each do |k, v|
    arr << v if k.include?"drwtNo"
end

#puts arr.sort

lotto = [1,2,3,4,5,6]


# sum = 0
# lotto.each do |no|
#     sum +=1 if lotto.include?(no)
# end
# puts sum

puts arr & lotto
a = "[1,2,3]".split(/[\[\],]/)
puts a.map(&:to_i)
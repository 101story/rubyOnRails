class LottoController < ApplicationController
    def index
    end
    
    def show
        #require 'httparty'
        require 'json'
        
        url="http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo="

        oldotto = params[:lotto]
        @lotto = oldotto.split(/[\[,\]]/).map(&:to_i)[1..-1]
        
        response = HTTParty.get(url)
        jsonData = JSON.parse(response.body)
        
        @arr = Array.new
        jsonData.each do |k, v|
            @arr << v if k.include?"drwtNo"
        end
        
        @bonous = jsonData["bnusNo"]

        matching = @lotto&@arr
        puts @lotto
        puts "matching : ",matching 
        case matching.count 
        when 6
            @rank="1등(15억)"
        when 5 && @lotto.include?(@bonous)
            @rank="2등"
        when 5
            @rank="3등"
        when 4
            @rank="4등(5만원)"
        when 3
            @rank="5(5천원)"
        else 
            @rank="꽝"
        end
        
    end
end

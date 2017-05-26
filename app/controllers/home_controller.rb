class HomeController < ApplicationController

  def index
    require 'open-uri'
    
      doc = Nokogiri::HTML(open("http://www.assembly.go.kr/assm/memact/congressman/memCond/memCond.do"))
  
      @titles =Array.new
      
      doc.css("div.memberna_list > dl > dt > strong").each do |c|
        @titles = index.push(c.text()) 
      end
    end
  end


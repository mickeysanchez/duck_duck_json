class SearchController < ApplicationController
  require 'nokogiri'
  require 'open-uri'
  require 'capybara/poltergeist'
  Capybara.javascript_driver = :poltergeist
  
  def new
  end
  
  def search
    url = "https://duckduckgo.com/?q=#{params[:q]}"
    @results = parse_html(url)
    render "search.json.jbuilder"
  end
  
  private
  
  def parse_html(url)
    session = Capybara::Session.new(:poltergeist)
    session.visit(url)
    
    doc = Nokogiri::HTML.parse(session.html)
  
    results = {};  
    results[:definition] = parse_definition(doc)
    results[:definition_source_url] = parse_definition_source(doc)
    results[:image] = parse_image_url(doc)
    results[:related] = parse_related(doc)
    results[:results] = parse_results(doc)
     
    session.driver.quit
     
    results
  end
  
  # Grab definition.
  def parse_definition(doc)
    definition = ""
  
    if doc.css('#zero_click_topics .results_disambig').length > 0
      definition = doc.css('#zero_click_topics .results_disambig')[0].text
    end
    
    definition
  end
  
  # Grab source of definition.
  def parse_definition_source(doc)
    definition_source_url = ""
    
    if doc.css('#zero_click_topics .results_disambig').length > 0
      definition_source_url = doc.css('#zero_click_topics .results_disambig')[0].css('a')[0]["href"]
    
      # Extend relative path to the full URL.
      unless definition_source_url.match(/https?:\/\/[\S]+/)
        definition_source_url = "https://duckduckgo.com" + definition_source_url
      end
    end
    
    definition_source_url
  end
  
  # Grab image url. 
  def parse_image_url(doc)
    image_url = ""
    if doc.css('.img_disambig')[0]
      image_url = "http:" + doc.css('.img_disambig')[0]["src"]
    end
    
    image_url
  end
  
  # Grab list of results.
  def parse_results(doc)
    results = []
    
    if doc.css('.links_deep').length > 0
      results = doc.css('.links_deep').map do |link| 
        {
          url: link.css('.large')[0]["href"],
          description: link.css('.snippet')[0].try(:text),
          sponsored: link.css('.sponsored_info').length > 0
        }
       end
    end
     
    results
  end
  
  # Grab related topics.
  def parse_related(doc)
    related = [];
    
    if doc.css('.links_zero_click_disambig')
      doc.css('.links_zero_click_disambig').map do |topic|
        next unless topic.css('a').length > 0
        
        url = topic.css('a')[0]["href"]
        
        # Extend relative path to the full URL.
        unless url.match(/https?:\/\/[\S]+/)
          url = "https://duckduckgo.com" + url
        end
        
        related << { text: topic.try(:text), url: url }
      end
    end
    
    related
  end
  
end

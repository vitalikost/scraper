class ParserController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def scraper
    @link_array_header = []
    @link_array_body = []
    @link_array_info = []
    @limit = 10

    name_site = 'http://www.yaplakal.com/'
    doc = Nokogiri::HTML(open(name_site))

    if (name_site = 'http://www.yaplakal.com/')
        limit = 0
        doc.css('.newshead').each do |link|
          limit = limit+1
          if(limit <= @limit)
            @link_array_header.push(link)
          else
            break
          end
        end

        limit = 0
        doc.css('.postcolor').each do |link|
          limit = limit+1
          if(limit <= @limit)
            @link_array_body.push(link)
          else
            break
          end
        end

        limit = 0
        doc.css('.icon-date').each do |link|
          limit = limit+1
          if(limit <= @limit)
            @link_array_info.push(link)
          else
            break
          end
        end
    end

    name_site = 'https://pikabu.ru/'
    doc = Nokogiri::HTML(open(name_site))

    if (name_site = 'https://pikabu.ru/')
      limit = 0
      doc.css('.story__header').each do |link|
        limit = limit+1
        if(limit <= @limit)
          @link_array_header.push(link)
        else
          break
        end
      end

      limit = 0
      doc.css('.story__content').each do |link|
        limit = limit+1
        if(limit <= @limit)
          @link_array_body.push(link)
        else
          break
        end
      end

      limit = 0
      doc.css('.story__datetime').each do |link|
        limit = limit+1
        if(limit <= @limit)
          @link_array_info.push(link)
        else
          break
        end
      end
    end
  end

end

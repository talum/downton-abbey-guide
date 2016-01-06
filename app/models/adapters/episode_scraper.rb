module Adapters
  class EpisodeScraper
    attr_reader :base_url

    def initialize
      @base_url = "http://downtonabbey.wikia.com"
    end

    def noko_data(url)
      noko_document = Nokogiri::HTML(open(url))
    end

    def has_link(node)
      !!node.attributes.first[1].value if node.attributes.first.first == "href"
    end

    def season_and_episode_links
      table_contents = noko_data("http://downtonabbey.wikia.com/wiki/Series_1").css('table.tablegreen')[1].children.children.children
      table_contents.map do |node|
        if node.class == Nokogiri::XML::Element && has_link(node)
          node.attributes.first[1].value
        end
      end.compact
    end

    def season_links
      season_and_episode_links.reject{|link| link.include?("Series")}
    end

    def scrape_episodes
      season_links.each do |season_link|
        url = base_url + season_link
        results = noko_data(url)
        name = results.css('h1').text
        summary = results.css('p').first.text
        season_name = results.css('.infobox a').attr('title').value
        season = Season.find_by(name: season_name)
        Episode.create(name: name, summary: summary, season_id: season.id)
      end
    end

  end
end
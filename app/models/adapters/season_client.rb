module Adapters
  class SeasonClient
    def connection
      @connection = Adapters::WikiaConnection.new
    end

    def get_season_links
      results = connection.get_links
      links = results.navigation.wiki[0].children.first.children
    end

    def create_seasons
      links = get_season_links
      seasons = links.map do |link|
        title_query = link.href[6..-1]
        results = connection.get_article_content(title_query)
        name = results.first[1].values[0]["title"]
        summary = results.first[1].values[0]["abstract"]
        image_url = results.first[1].values[0]["thumbnail"]
        Season.create(name: name, summary: summary, image_url: image_url)
      end 
    end

  end
end
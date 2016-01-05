module Adapters
  class CharacterClient
    
    def initialize
      @@char_class = {1 => "Nobility", 2 => "Middle Class", 3 => "Servants"}
    end
    
    def connection
      @connection = Adapters::WikiaConnection.new
    end

    def char_class
      @@char_class 
    end

    def get_char_links(key)
      results = connection.get_links
      links = results.navigation.wiki[0].children[key].children
    end

    def create_characters
      char_class.keys.each do |key|
        links = get_char_links(key)
        characters = links.map do |link|
          name_query = link.href[6..-1]
          results = connection.get_article_content(name_query)
          name = results.first[1].values[0]["title"]
          bio = results.first[1].values[0]["abstract"]
          image_url = results.first[1].values[0]["thumbnail"]
          social_class = char_class[key]
          Character.create(name: name, bio: bio, image_url: image_url, social_class: social_class)
        end 
      end
    end
  end
end


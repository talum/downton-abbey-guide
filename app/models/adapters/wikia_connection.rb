module Adapters
  class WikiaConnection
    include HTTParty

    attr_reader :connection

    def initialize
      @connection = self.class
    end

    def get_links
      results = connection.get("http://downtonabbey.wikia.com/api/v1/Navigation/Data")
      s_results = RecursiveOpenStruct.new(results, :recurse_over_arrays => true)
    end

    def get_article_content(path)
      url = "http://downtonabbey.wikia.com/api/v1/Articles/Details?titles=#{path}&abstract=500"
      results = connection.get(url)
    end


  end
end
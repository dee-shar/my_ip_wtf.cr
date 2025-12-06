require "json"
require "http/client"

class MyIpWtf
  def initialize()
    @headers = HTTP::Headers {
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://myip.wtf")
    @http_client = HTTP::Client.new(uri)
  end

  def get_my_ip() : JSON::Any
    JSON.parse(@http_client.get("/json", headers: @headers).body)
  end
end

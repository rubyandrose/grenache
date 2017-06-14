require 'net/http'

class Horoscope
  include ActiveModel::Model

  attr_reader :zodiac

  def initialize(zodiac:)
    @zodiac = zodiac
  end

  def sunsign_url
    "http://theastrologer-api.herokuapp.com/api/horoscope/#{zodiac}/today"
  end

  def request
    url = URI.parse(sunsign_url)
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    @request ||= JSON.parse(res.body)
  end

  def weekly_horoscope
    @weekly_horoscope ||= request["horoscope"]
  end
end

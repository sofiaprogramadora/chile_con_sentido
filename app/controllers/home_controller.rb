class HomeController < ApplicationController
  
  def main

     @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'OXhoB33kWBAOSBpFg8M1f5iRu'
      config.consumer_secret     = 'SPCl3qvrPAfx1lUh6Mf8L0r0uknvDOiSf7XSbznCD1s6UPoUV5'
      config.access_token        = '901604568148168706-Z7R1ffWTFZqQNWHVA3DxJFa1J76Lpn6'
      config.access_token_secret = 'XQZTbw2mdzl63B09pjEeTosLBxUR2NBaynl3j5paK78jf'
    end

    @client_2 = Twitter::Streaming::Client.new do |config|
      config.consumer_key        = 'OXhoB33kWBAOSBpFg8M1f5iRu'
      config.consumer_secret     = 'SPCl3qvrPAfx1lUh6Mf8L0r0uknvDOiSf7XSbznCD1s6UPoUV5'
      config.access_token        = '901604568148168706-Z7R1ffWTFZqQNWHVA3DxJFa1J76Lpn6'
      config.access_token_secret = 'XQZTbw2mdzl63B09pjEeTosLBxUR2NBaynl3j5paK78jf'
    end

  end

  def result

  end

end

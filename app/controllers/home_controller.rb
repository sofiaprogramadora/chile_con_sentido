class HomeController < ApplicationController

  def main
  end

  def result
    if params[:search].empty?
      redirect_to root_path, notice: "Debes buscar algo"
      return
    end

    @var = params[:search]
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'OXhoB33kWBAOSBpFg8M1f5iRu'
      config.consumer_secret     = 'SPCl3qvrPAfx1lUh6Mf8L0r0uknvDOiSf7XSbznCD1s6UPoUV5'
      config.access_token        = '901604568148168706-Z7R1ffWTFZqQNWHVA3DxJFa1J76Lpn6'
      config.access_token_secret = 'XQZTbw2mdzl63B09pjEeTosLBxUR2NBaynl3j5paK78jf'
    end

    @client_query = @client.search("to:#{@var}", result_type: "recent")
    @hash_query = @client.search("##{@var}")
    @tweets = (@client_query.to_a + @hash_query.to_a).first(20)
  end

end

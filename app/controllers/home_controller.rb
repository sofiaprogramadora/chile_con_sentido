class HomeController < ApplicationController

  def main
    @var = params[:search]
  end


  def show_result
    @var = params[:search]
    redirect_to home_result_path(search: @var), notice: "Su busqueda no obtuvo resultados"
  end

  def result
    @var = params[:search]
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'OXhoB33kWBAOSBpFg8M1f5iRu'
      config.consumer_secret     = 'SPCl3qvrPAfx1lUh6Mf8L0r0uknvDOiSf7XSbznCD1s6UPoUV5'
      config.access_token        = '901604568148168706-Z7R1ffWTFZqQNWHVA3DxJFa1J76Lpn6'
      config.access_token_secret = 'XQZTbw2mdzl63B09pjEeTosLBxUR2NBaynl3j5paK78jf'
    end

  end

end

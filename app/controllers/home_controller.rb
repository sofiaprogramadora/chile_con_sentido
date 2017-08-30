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

    end

    @client_query = @client.search("to:#{@var}", result_type: "recent")
    @hash_query = @client.search("##{@var}")
    @tweets = (@client_query.to_a + @hash_query.to_a).first(20)
  end

end

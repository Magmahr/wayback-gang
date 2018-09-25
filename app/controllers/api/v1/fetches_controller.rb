class Api::V1::FetchesController < ApplicationController

  def index
    @fetches = Fetch.all
    render json: @fetches
  end

  # def create
  #   # require 'wikipedia'
  #   # page = Wikipedia.find( 'Napoleon' )
  #   @fetch = Fetch.new($Summary)
  #   @fetch.save
  #   byebug
  #
  #   render json: @fetch
  # end

  # def get_trending
  #     url = 'https://api.giphy.com/v1/gifs/trending?api_key=' + ENV["FINGERLICKINGOOD"] + '&limit=27'
  #     request = RestClient.get(url)
  #     response = JSON.parse(request)
  #     render json: response
  #   end

  private

  def fetch_params
    params.require(:fetch).permit(:text)
  end

end

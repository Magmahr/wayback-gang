class Api::V1::FetchesController < ApplicationController
  require 'wikipedia'

  def index
    page = Wikipedia.find( 'Napoleon' )
    response = page.summary.to_json
    image = page.image_urls
    both = [image, response]
    # @fetches = Fetch.all
    render json: both
  end

  # def create
  #   page = Wikipedia.find( 'Napoleon' )
  #   byebug
  #   # @fetch = Fetch.new($Summary)
  #   # @fetch.save
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

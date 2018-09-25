require 'wikipedia'
page = Wikipedia.find( 'Napoleon' )

page.summary
page.image_urls


# def get_trending
#     url = 'https://api.giphy.com/v1/gifs/trending?api_key=' + ENV["FINGERLICKINGOOD"] + '&limit=27'
#     request = RestClient.get(url)
#     response = JSON.parse(request)
#     render json: response
#   end

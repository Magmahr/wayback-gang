require 'wikipedia'
Fetch.destroy_all

Napoleon = Wikipedia.find( 'Napoleon' )

$Summary = Napoleon.summary
# byebug
$Url = Napoleon.image_urls

Fetch.create(text: $Summary)
Fetch.create(text: $Url)

# def get_trending
#     url = 'https://api.giphy.com/v1/gifs/trending?api_key=' + ENV["FINGERLICKINGOOD"] + '&limit=27'
#     request = RestClient.get(url)
#     response = JSON.parse(request)
#     render json: response
#   end

# =====================================================================================================================
#           _____                    _____                    _____            _____          
#          /\    \                  /\    \                  /\    \          /\    \         
#         /::\____\                /::\    \                /::\____\        /::\    \        
#        /:::/    /               /::::\    \              /:::/    /       /::::\    \       
#       /:::/    /               /::::::\    \            /:::/    /       /::::::\    \      
#      /:::/    /               /:::/\:::\    \          /:::/    /       /:::/\:::\    \     
#     /:::/    /               /:::/__\:::\    \        /:::/    /       /:::/__\:::\    \    
#    /:::/    /               /::::\   \:::\    \      /:::/    /        \:::\   \:::\    \   
#   /:::/    /      _____    /::::::\   \:::\    \    /:::/    /       ___\:::\   \:::\    \  
#  /:::/____/      /\    \  /:::/\:::\   \:::\____\  /:::/    /       /\   \:::\   \:::\    \ 
# |:::|    /      /::\____\/:::/  \:::\   \:::|    |/:::/____/       /::\   \:::\   \:::\____\
# |:::|____\     /:::/    /\::/   |::::\  /:::|____|\:::\    \       \:::\   \:::\   \::/    /
#  \:::\    \   /:::/    /  \/____|:::::\/:::/    /  \:::\    \       \:::\   \:::\   \/____/ 
#   \:::\    \ /:::/    /         |:::::::::/    /    \:::\    \       \:::\   \:::\    \     
#    \:::\    /:::/    /          |::|\::::/    /      \:::\    \       \:::\   \:::\____\    
#     \:::\__/:::/    /           |::| \::/____/        \:::\    \       \:::\  /:::/    /    
#      \::::::::/    /            |::|  ~|               \:::\    \       \:::\/:::/    /     
#       \::::::/    /             |::|   |                \:::\    \       \::::::/    /      
#        \::::/    /              \::|   |                 \:::\____\       \::::/    /       
#         \::/____/                \:|   |                  \::/    /        \::/    /        
#          ~~                       \|___|                   \/____/          \/____/                           [alpha]
#
# Web Scraping: rvest                         Exegetic Analytics / www.exegetic.biz / info@exegetic.biz / @exegeticdata
# =====================================================================================================================

# LIBRARIES -----------------------------------------------------------------------------------------------------------

library(urltools)

# Functions we'll be using:
# 
# url_parse()
# url_compose()
# url_decode() and
# scheme()

# ---------------------------------------------------------------------------------------------------------------------

URL = "http://api.plos.org/search?q=title:%22Drosophila%22%20and%20body:%22RNA%22&fl=id,abstract"

# 1. Identify the components of the above URL.
# 2. Use url_parse() to extract components of the URL. Did you get them right?
# 3. Change the scheme to "https".
# 4. Decode the URL parameters.
  
# === -> YOUR CODE ===
# === <- YOUR CODE ===

# CONSTRUCT BLOG URLS -------------------------------------------------------------------------------------------------

# Construct HTTPS URLs for the following blog posts, all of which are on the towardsdatascience.com domain:
# 
# - how-to-make-money-using-web-scraping-662f1c3da050
# - the-alternative-to-web-scraping-8d530ae705ca and
# - scraping-tripadvisor-text-mining-and-sentiment-analysis-for-hotel-reviews-cc4e20aef333.

paths = c(
  "how-to-make-money-using-web-scraping-662f1c3da050",
  "the-alternative-to-web-scraping-8d530ae705ca",
  "scraping-tripadvisor-text-mining-and-sentiment-analysis-for-hotel-reviews-cc4e20aef333"
)

# === -> YOUR CODE ===
# === <- YOUR CODE ===


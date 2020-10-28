# =====================================================================================================================
#  ______   ______   __       ______   ___   __     ________  __  __   ___ __ __     
# /_____/\ /_____/\ /_/\     /_____/\ /__/\ /__/\  /_______/\/_/\/_/\ /__//_//_/\    
# \::::_\/_\::::_\/_\:\ \    \::::_\/_\::\_\\  \ \ \__.::._\/\:\ \:\ \\::\| \| \ \   
#  \:\/___/\\:\/___/\\:\ \    \:\/___/\\:. `-\  \ \   \::\ \  \:\ \:\ \\:.      \ \  
#   \_::._\:\\::___\/_\:\ \____\::___\/_\:. _    \ \  _\::\ \__\:\ \:\ \\:.\-/\  \ \ 
#     /____\:\\:\____/\\:\/___/\\:\____/\\. \`-\  \ \/__\::\__/\\:\_\:\ \\. \  \  \ \
#     \_____\/ \_____\/ \_____\/ \_____\/ \__\/ \__\/\________\/ \_____\/ \__\/ \__\/                      [swamp land]
#
# Web Scraping: Webber Wentzel                Exegetic Analytics / www.exegetic.biz / info@exegetic.biz / @exegeticdata
# =====================================================================================================================

# We're going to gather a catalog of people from a law firm's website.

# CONFIGURATION -------------------------------------------------------------------------------------------------------

URL = "https://www.webberwentzel.com/specialists/Pages/default.aspx"

# LIBRARIES -----------------------------------------------------------------------------------------------------------

library(dplyr)
library(purrr)
library(stringr)
library(RSelenium)

# CONNECTION ----------------------------------------------------------------------------------------------------------

# 1. Use remoteDriver() to create a connection to Selenium.
# 2. Open the browser.
# 3. Navigate to the URL.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# ---------------------------------------------------------------------------------------------------------------------

# Write a function which will
#
# 1. Accept a letter of the alphabet as argument
# 2. Click the corresponding "Filter by Surname" link.
# 3. Scroll to the bottom of the page.
# 4. Get a list of the .SpecialistResult elements.
# 5. For each element:
#
#    - move mouse focus to that element
#    - extract all of the pertinent information and
#    - return it as a tibble.
#
# NB!!! Insert (random) pauses in the loop so that you are not hitting the website too hard!
#
# Test this for a couple of letters.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# AUTOMATION ----------------------------------------------------------------------------------------------------------

# 1. Run the function over all letters in the alphabet.
# 2. Consolidate the results in a single tibble.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# ---------------------------------------------------------------------------------------------------------------------

browser$close()
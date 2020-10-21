# =====================================================================================================================
#       ___           ___           ___           ___           ___     
#      /\  \         /\__\         /\  \         /\  \         /\  \    
#     /::\  \       /:/  /        /::\  \       /::\  \        \:\  \   
#    /:/\:\  \     /:/  /        /:/\:\  \     /:/\ \  \        \:\  \  
#   /::\~\:\  \   /:/__/  ___   /::\~\:\  \   _\:\~\ \  \       /::\  \ 
#  /:/\:\ \:\__\  |:|  | /\__\ /:/\:\ \:\__\ /\ \:\ \ \__\     /:/\:\__\
#  \/_|::\/:/  /  |:|  |/:/  / \:\~\:\ \/__/ \:\ \:\ \/__/    /:/  \/__/
#     |:|::/  /   |:|__/:/  /   \:\ \:\__\    \:\ \:\__\     /:/  /     
#     |:|\/__/     \::::/__/     \:\ \/__/     \:\/:/  /     \/__/      
#     |:|  |        ~~~~          \:\__\        \::/  /                 
#      \|__|                       \/__/         \/__/                                                     [isometric1]
#
# Web Scraping: Members of Parliament         Exegetic Analytics / www.exegetic.biz / info@exegetic.biz / @exegeticdata
# =====================================================================================================================

# CONFIGURATION -------------------------------------------------------------------------------------------------------

library(dplyr)
library(purrr)
library(tidyr)
library(stringr)
library(rvest)

# ---------------------------------------------------------------------------------------------------------------------

# 1. Go to the directory of the National Assembly at https://pmg.org.za/members/.
# 2. Note that each member has a card and that the card links to a member page.
# 3. Click through to a personal page.

# ---------------------------------------------------------------------------------------------------------------------

# 1. Grab the directory page using read_html().
# 2. Extract the URL links for the member pages.
# 3. Return the result as a tibble with a single column containing the links. Store result in variable 'parliament'.
# 4. Retain only the URLs which begin with https://www.pa.org.za/.

URL <- "https://pmg.org.za/members/"

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# ---------------------------------------------------------------------------------------------------------------------

# 1. Write a function which will accept the URL for a member page and extract the following information:
#
#    - name
#    - party affiliation
#    - position
#    - phone number and
#    - email address.
#
#    Return the result as a tibble.
#
#    * You'll need to cater for multiple phone numbers and email addresses.
#
# 2. Test the function on a few of the member pages.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# ---------------------------------------------------------------------------------------------------------------------

# 1. Apply this function to a random sample of five members.
# 2. Filter out records which did not return data.
# 3. Unpack the data so that there is a single record for each member containing all of the fields specified above.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# ---------------------------------------------------------------------------------------------------------------------

# If you got this far you can try scraping all of the members.

# === -> YOUR CODE ===
# === <- YOUR CODE ===
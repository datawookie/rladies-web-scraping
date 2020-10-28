# =====================================================================================================================
#   #####                                              
#  #     # ###### #      ###### #    # # #    # #    # 
#  #       #      #      #      ##   # # #    # ##  ## 
#   #####  #####  #      #####  # #  # # #    # # ## # 
#        # #      #      #      #  # # # #    # #    # 
#  #     # #      #      #      #   ## # #    # #    # 
#   #####  ###### ###### ###### #    # #  ####  #    #                                                         [banner]
#
# Web Scraping: RSelenum Homepage             Exegetic Analytics / www.exegetic.biz / info@exegetic.biz / @exegeticdata
# =====================================================================================================================

URL = "https://docs.ropensci.org/RSelenium/"

# START SELENIUM ------------------------------------------------------------------------------------------------------

# Start the Docker image (if you don't already have one running!).
#
# $ docker run -d -p 4444:4444 -p 5900:5900 selenium/standalone-chrome-debug:3.141
#
# Verify that it is running.
#
# $ docker ps

# VNC CONNECTION ------------------------------------------------------------------------------------------------------

# Fire up VNC Viewer and create a connection to Selenium.

# LIBRARIES -----------------------------------------------------------------------------------------------------------

library(RSelenium)

# ---------------------------------------------------------------------------------------------------------------------

# 1. Use remoteDriver() to create a connection to Selenium.
# 2. Open the browser.
# 3. Navigate to the URL.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# PAGE DETAILS --------------------------------------------------------------------------------------------------------

# 1. Get the current URL.
# 2. Get the page title.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# SCREENSHOT ----------------------------------------------------------------------------------------------------------

# 1. Take a screenshot and save it to "rselenium-homepage.png".

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# FIND ELEMENT --------------------------------------------------------------------------------------------------------

# 1. Find the element which contains the current package version.
# 2. Get the text enclosed by this element.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# MULTIPLE ELEMENTS ---------------------------------------------------------------------------------------------------

# 1. Find the elements which link to articles (from the navigation bar).
# 2. How many articles are there?
# 3. Print out the URL for each article.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# CLEANUP -------------------------------------------------------------------------------------------------------------

# 1. Close the browser.
# 2. Delete the screenshot.

# === -> YOUR CODE ===
# === <- YOUR CODE ===
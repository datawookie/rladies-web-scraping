# =====================================================================================================================
#  ______     __    __    _____    _____   ________  
# (   __ \    ) )  ( (   / ___/   / ____\ (___  ___) 
#  ) (__) )  ( (    ) ) ( (__    ( (___       ) )    
# (    __/    \ \  / /   ) __)    \___ \     ( (     
#  ) \ \  _    \ \/ /   ( (           ) )     ) )    
# ( ( \ \_))    \  /     \ \___   ___/ /     ( (     
#  )_) \__/      \/       \____\ /____/      /__\                                                               [jacky]
#
# Web Scraping: Elevation Extremes            Exegetic Analytics / www.exegetic.biz / info@exegetic.biz / @exegeticdata
# =====================================================================================================================

# LIBRARIES -----------------------------------------------------------------------------------------------------------

library(dplyr)
library(stringr)
library(janitor)
library(forcats)
library(rvest)
library(ggplot2)
library(scico)
library(patchwork)

# ---------------------------------------------------------------------------------------------------------------------

URL = "https://en.wikipedia.org/wiki/List_of_elevation_extremes_by_country"

# 1. Grab the above page.
# 2. Parse the elevation data into a data frame.
#
#    The results should look like this:
#
#             location      max_elevation   min_elevation
#    1     Afghanistan    7492 m24,580 ft     258 m846 ft
#    2         Albania     2764 m9,068 ft       sea level
#    3         Algeria     3003 m9,852 ft    −40 m−131 ft
#    4  American Samoa      966 m3,169 ft       sea level
#    5         Andorra     2942 m9,652 ft   840 m2,756 ft

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# ---------------------------------------------------------------------------------------------------------------------

# 1. Write a function which will retain only the elevation in metres.
# 2. Test the function on specific values from the maximum and minimum elevation columns.
# 3. Apply the function to both elevation columns.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# ---------------------------------------------------------------------------------------------------------------------

# 1. Convert the elevation columns to numeric.
# 2. Add a column for the difference between maximum and minimum elevation.
# 3. Convert the label column to a factor and order according to descending elevation difference.

# === -> YOUR CODE ===
# === <- YOUR CODE ===

# VISUALISE -----------------------------------------------------------------------------------------------------------

elevations_label <- elevations %>% filter(location %in% c(
  "Uganda", "Mongolia", "Armenia", "Rwanda", "South Sudan", "Liechtenstein", "Andorra", "Lesotho", "Zambia",
  "Burundi", "Niger", "Botswana", "Kyrgyzstan"))

gg_max <- ggplot(elevations, aes(x = location, y = max_elevation)) +
  geom_col(aes(fill = delta_elevation), width = 0.75, show.legend = FALSE) +
  geom_segment(data = elevations_label,
               aes(xend = location, y = max_elevation + 1350, yend = max_elevation + 100),
               color = "grey") +
  geom_label(data = elevations_label, aes(label = location, y = max_elevation + 1500), label.size = NA, alpha = 0.5) +
  labs(
    x = "",
    y = "Maximum Elevation [metres]"
  ) +
  scale_y_continuous(limits = c(0, NA), expand = c(0, 0, 0, 500)) +
  scale_fill_scico(palette = 'berlin') +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank(), axis.line.x = element_blank())
gg_min <- ggplot(elevations, aes(x = location, y = min_elevation)) +
  geom_col(aes(fill = delta_elevation), width = 0.75, show.legend = FALSE) +
  geom_hline(yintercept = 0, lty = "dashed") +
  labs(
    x = "",
    y = "Minimum Elevation [metres]"
  ) +
  scale_fill_scico(palette = 'berlin') +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank(), axis.line.x = element_blank())

gg_max + gg_min + plot_layout(ncol = 1, heights = c(3, 2))

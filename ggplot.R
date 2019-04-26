########################################## Mardi Scraping ##########################################

# Bonjour! Voici le 2e document test d'Adrien Cloutier servant aux mardis scraping.
# Dans ce document, je tenterai de faire un ggplot, en prévision du prochain meeting.

# Bonne chance!

########################################## 25 avril 2019 ##########################################

# D'abord, scraper les données wiki sur les albums les plus vendus au monde

########## Loaded les packages nécessaires ###########

library(tidyverse)
library(stringr)
library(XML)
library(RCurl)
library(maps)


########## We load the data from the webpage into R ###########

famous_album <- getURL("https://fr.wikipedia.org/wiki/Liste_des_albums_musicaux_les_plus_vendus")

tables <- readHTMLTable(famous_album, stringsAsFactors = FALSE)

########## We have a look at the data  ###########

Top9_album <- tables[[2]]
names(Top9_album) <- Top9_album[1,]
Top9_album <- Top9_album[-1,]
head(Top9_album)

########## Nettoyer les données ###########


########## Faire un ggplot des albums les plus vendus ###########


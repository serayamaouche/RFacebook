#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Script File: Rfacebook.R  
# Date of creation: 29 Nov 2016
# Date of last modification: 25 Feb 2017
# Author: Seraya Maouche <seraya.maouche@iscb.org>
# Short Description: This script provides an interface to Facebook API
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# CRAN   : https://cran.r-project.org/web/packages/Rfacebook/index.html
# Github : https://github.com/pablobarbera/Rfacebook

# Load required packages
library(RCurl)

#********************** Installing Rfacebook package from CRAN
# install.packages("Rfacebook")

#********************** Installing from Github
install.packages("Rfacebook")
library(devtools)
install_github("Rfacebook", "pablobarbera", subdir="Rfacebook")


#********************** Load library
library(Rfacebook)
help(plusser)

# Sets an API key for the Facebook API
# GO https://developers.facebook.com
myAppID = ""
muAppSecret =""

fb_oauth <- fbOAuth(app_id= myAppID, app_secret= muAppSecret,extended_permissions = TRUE)

load("fb_oauth.Rd") ## load my previously saved authentication token


# token generated here: https://developers.facebook.com/tools/explorer 
token <- ''
me <- getUsers("me", token, private_info=TRUE)
me$name # my name
me$hometown # my hometown

my_friends <- getFriends(token, simplify = TRUE)
head(my_friends$id, n = 1) # get lowest user ID

my_friends_info <- getUsers(my_friends$id, token, private_info = TRUE)
table(my_friends_info$gender)  # gender
table(substr(my_friends_info$locale, 1, 2))  # language
table(substr(my_friends_info$locale, 4, 5))  # country
table(my_friends_info$relationship_status)  # relationship status

mat <- getNetwork(token, format = "adj.matrix")
dim(mat) # dimension of matrix



page <- getPage("AFP", token, n = 5000)
page[which.max(page$likes_count), ]


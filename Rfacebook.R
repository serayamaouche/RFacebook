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

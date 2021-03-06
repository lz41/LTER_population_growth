## Authors: LTER pipeline team
## Purpose: build a general function to analyze popler data sets and generate desired outputs
## Last update: February 1, 2019

## install popler
#install.packages("devtools")
#devtools::install_github("AldoCompagnoni/popler", build_vignettes=T, force=T)
#install.packages("dplyr")
library(popler)

## let's use the heron data set as a guinea pig
herons_metadat <- pplr_browse(proj_metadata_key==88)
herons <- pplr_get_data(herons_metadat)
herons_metadat$lat_lter

bigfun <- function(popler_proj_key){
  
  ## extract popler project data and metadata
  metadat <- pplr_browse(proj_metadata_key==popler_proj_key)
  dat <- pplr_get_data(metadat)
  
  ## collect climate covariates
  latlong_DD <- c(metadat$lat_lter, metadat$long_lter)
  years <- metadat$studystartyr:metadat$studyendyr
  
  ## diagnose the data type
  type <- metadat$datatype
  
  ## prep data for analysis
  
  ## send to the appropriate Stan model, given data type
  
  ## pull out items of interest from Stan output - could embed climate change simulation here
  
  ## package outputs into data frame or list
  
}

## pseudo-code for Stan model
#1. Get year-specific lambdas
#2. Fit spline for climate covariate
#3. Derive expected value
#4. Calculate model diagnostics

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(bodycompref)

## -----------------------------------------------------------------------------
citation("bodycompref")

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("bodycompref")

## ----eval = FALSE-------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("p-mq/bodycompref")

## ----eval=FALSE---------------------------------------------------------------
#  # Models for adipose tissue, ~60Mb
#  install.packages("adiposerefdata", repos="https://p-mq.github.io/drat")
#  # Models for skeletal muscle, ~45Mb
#  install.packages("musclerefdata", repos="https://p-mq.github.io/drat")

## ----eval = requireNamespace("adiposerefdata", quietly = TRUE)----------------
# Creating example data
metric <- c("CSFA", "CSFA")
sex <- c("Female", "Male")
level <- c("T5", "T8")
age <- c(40, 60)
measurement <- c(109, 220)

# Actual calculation
bodycompref::percent_predicted(metric, sex, level, age, measurement)


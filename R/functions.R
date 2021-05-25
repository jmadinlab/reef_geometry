# Functions and packages

library(raster)
library(rgdal)

D_func <- function(H, R, L, L0) {
  3 - log10(H / (sqrt(2) * L0 * sqrt(R^2 - 1))) / log10(L / L0)
}


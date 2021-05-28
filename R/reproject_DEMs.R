# Cycle through and reproject DEMs with m local axes.
# Only run once, but useful to have.

for (rec in c("S2", "S3", "S4")) {
  # Reef record name
  rec <- "S3"
  
  # Load geotif
  data <- raster(paste0("data/reef_records/", rec, "_DEM.tif"))
  
  # Take a look at the reef record spatial metadata
  data
  
  # Need to reproject raster so that using meters.
  sr <- paste0("+proj=tmerc +lat_0=", data@extent@ymin, " +lon_0=", data@extent@xmin, " +k=1 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs")
  data <- projectRaster(data, crs = sr)
  
  # Write the RasterLayer to disk (See datatype documentation for other formats)
  writeRaster(data, filename=paste0("data/reef_records/", rec, "_DEM_RP.tif"))
  
}
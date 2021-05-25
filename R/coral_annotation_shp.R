# Load RR coral annotations

rr1 <- readOGR("data/coral_annotations/RR01/reef42_rr01_sppAnno.shp")
rr1@data <- rr1@data["species"]
writeOGR(rr1, "output/coral_annotations", layer="RR01", driver="ESRI Shapefile", overwrite_layer=TRUE)

rr2 <- readOGR("data/coral_annotations/RR02/reef42_rr02_sppAnno.shp")
rr2@data <- rr2@data["species"]
writeOGR(rr2, "output/coral_annotations", layer="RR02", driver="ESRI Shapefile", overwrite_layer=TRUE)

rr3a <- readOGR("data/coral_annotations/RR03/annotations/RR03_TJQ.shp")
rr3a@data <- rr3a@data["species"]
rr3b <- readOGR("data/coral_annotations/RR03/annotations/RR03_MICG.shp")
rr3b@data <- rr3b@data["species"]
rr3c <- readOGR("data/coral_annotations/RR03/annotations/RR03_SF.shp")
rr3c@data <- rr3c@data["species"]
rr3 <- bind(rr3a, rr3b, rr3c)
writeOGR(rr3, "output/coral_annotations", layer="RR03", driver="ESRI Shapefile", overwrite_layer=TRUE)

rr4a <- readOGR("data/coral_annotations/RR04/annotations/RR04_AC.shp")
rr4a@data <- rr4a@data["species"]
rr4b <- readOGR("data/coral_annotations/RR04/annotations/RR04_AL.shp")
rr4b@data <- rr4b@data["species"]
rr4c <- readOGR("data/coral_annotations/RR04/annotations/RR04_MICG.shp")
rr4c@data <- rr4c@data["species"]
rr4 <- bind(rr4a, rr4b, rr4c)
writeOGR(rr4, "output/coral_annotations", layer="RR04", driver="ESRI Shapefile", overwrite_layer=TRUE)

rr7a <- readOGR("data/coral_annotations/RR07/RR07_CP.shp")
rr7a@data <- rr7a@data["species"]
rr7b <- readOGR("data/coral_annotations/RR07/RR07_EH.shp")
rr7b@data <- rr7b@data["species"]
rr7c <- readOGR("data/coral_annotations/RR07/SS07_SY.shp")
rr7c@data <- rr7c@data["species"]
rr7 <- bind(rr7a, rr7b, rr7c)
writeOGR(rr7, "output/coral_annotations", layer="RR07", driver="ESRI Shapefile", overwrite_layer=TRUE)

rr8a <- readOGR("data/coral_annotations/RR08/RR08_EAV.shp")
rr8a@data <- rr8a@data["species"]
rr8b <- readOGR("data/coral_annotations/RR08/RR08_FR.shp")
rr8b@data <- rr8b@data["species"]
rr8c <- readOGR("data/coral_annotations/RR08/RR08_SY.shp")
rr8c@data <- rr8c@data["species"]
rr8 <- bind(rr8a, rr8b, rr8c)
writeOGR(rr8, "output/coral_annotations", layer="RR08", driver="ESRI Shapefile", overwrite_layer=TRUE)

# coral_data <- bind(rr1, rr2, rr3, rr4, rr7, rr8)

# Load RR coral annotations

S1a <- readOGR("data/coral_annotations/S1/S1_corals_dawn.shp")
S1a@data <- S1a@data["species"]
S1b <- readOGR("data/coral_annotations/S1/S1_Corals_Trisha.shp")
S1b@data <- S1b@data["species"]
# S1c <- readOGR("data/coral_annotations/S1/S1_SF.shp")
# S1c@data <- S1c@data["species"]
S1 <- bind(S1a, S1b)
writeOGR(S1, "output/coral_annotations", layer="S1", driver="ESRI Shapefile", overwrite_layer=TRUE)

S2a <- readOGR("data/coral_annotations/S2/S2_corals_anna.shp")
S2a@data <- S2a@data["species"]
S2b <- readOGR("data/coral_annotations/S2/S2_corals_annie.shp")
S2b@data <- S2b@data["species"]
S2c <- readOGR("data/coral_annotations/S2/S2_Corals_Fiza .shp")
S2c@data <- S2c@data["species"]
S2 <- bind(S2a, S2b, S2c)
writeOGR(S2, "output/coral_annotations", layer="S2", driver="ESRI Shapefile", overwrite_layer=TRUE)

S3a <- readOGR("data/coral_annotations/S3/S3_corals_rago.shp")
S3a@data <- S3a@data["species"]
S3b <- readOGR("data/coral_annotations/S3/S3_corals_whit.shp")
S3b@data <- S3b@data["species"]
S3c <- readOGR("data/coral_annotations/S3/S3_corals_Nic.shp")
S3c@data <- S3c@data["species"]
S3 <- bind(S3a, S3b, S3c)
writeOGR(S3, "output/coral_annotations", layer="S3", driver="ESRI Shapefile", overwrite_layer=TRUE)

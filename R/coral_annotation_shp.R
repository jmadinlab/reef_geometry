# Load RR coral annotations

S1a <- readOGR("data/coral_annotations/S1/S1_corals_dawn.shp")
S1a@data <- S1a@data["species"]
S1b <- readOGR("data/coral_annotations/S1/S1_Corals_Trisha.shp")
S1b@data <- S1b@data["species"]
# S1c <- readOGR("data/coral_annotations/S1/S1_SF.shp")
# S1c@data <- S1c@data["species"]
rr3 <- bind(S1a, S1b, S1c)
writeOGR(rr3, "output/coral_annotations", layer="S1", driver="ESRI Shapefile", overwrite_layer=TRUE)

# coral_data <- bind(rr1, rr2, rr3, rr4, rr7, rr8)
S1_corals_dawn.shp
S1_Corals_Trisha.shp
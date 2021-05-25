# Load RR coral annotations

rr1 <- readOGR("data/coral_annotations/RR01/reef42_rr01_sppAnno.shp")@data["species"]
rr1$RR <- 1

rr2 <- readOGR("data/coral_annotations/RR02/reef42_rr02_sppAnno.shp")@data["species"]
rr2$RR <- 2

rr3a <- readOGR("data/coral_annotations/RR03/annotations/RR03_TJQ.shp")@data["species"]
rr3b <- readOGR("data/coral_annotations/RR03/annotations/RR03_MICG.shp")@data["species"]
rr3c <- readOGR("data/coral_annotations/RR03/annotations/RR03_SF.shp")@data["species"]
rr3 <- rbind(rr3a, rr3b, rr3c)
rr3$RR <- 3

rr4a <- readOGR("data/coral_annotations/RR04/annotations/RR04_AC.shp")@data["species"]
rr4b <- readOGR("data/coral_annotations/RR04/annotations/RR04_AL.shp")@data["species"]
rr4c <- readOGR("data/coral_annotations/RR04/annotations/RR04_MICG.shp")@data["species"]
rr4 <- rbind(rr4a, rr4b, rr4c)
rr4$RR <- 4

rr7a <- readOGR("data/coral_annotations/RR07/RR07_CP.shp")@data["species"]
rr7b <- readOGR("data/coral_annotations/RR07/RR07_EH.shp")@data["species"]
rr7c <- readOGR("data/coral_annotations/RR07/SS07_SY.shp")@data["species"]
rr7 <- rbind(rr7a, rr7b, rr7c)
rr7$RR <- 7

rr8a <- readOGR("data/coral_annotations/RR08/RR08_EAV.shp")@data["species"]
rr8b <- readOGR("data/coral_annotations/RR08/RR08_FR.shp")@data["species"]
rr8c <- readOGR("data/coral_annotations/RR08/RR08_SY.shp")@data["species"]
rr8 <- rbind(rr8a, rr8b, rr8c)
rr8$RR <- 8

coral_data <- rbind(rr1, rr2, rr3, rr4, rr7, rr8)

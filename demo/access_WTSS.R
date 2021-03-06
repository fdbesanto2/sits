# Example of accessing a time series using the WTSS (web time series service)
message("WTSS is a web time series service developed by INPE")
# Obtain information about the cubes available in the WTSS service
library(sits)

# get information about a specific data cube
cube_wtss.tb <- sits_cube(service = "WTSS", name = "MOD13Q1")

# retrieve the time series associated with the point from the WTSS server
point.tb <- sits_get_data(cube_wtss.tb, longitude = -47.0516, latitude = -10.7241,
                          bands = c("ndvi", "evi", "nir", "mir"))

# plot the series
plot(point.tb)


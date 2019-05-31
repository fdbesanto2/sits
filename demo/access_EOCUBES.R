# Example of accessing a time series using the EOCubes package
message("EOCubes is a time series package developed by INPE")

# Obtain information about the coverages available in the WTSS service
library(sits)

# get information about a specific coverage
coverage_eocubes.tb <- sits_coverage(service = "EOCUBES", name = "MOD13Q1/006")

# retrieve the time series associated with the point from the WTSS server
point.tb <- sits_get_data(coverage = coverage_eocubes.tb,
                          longitude = -46.5, latitude = -11.5,
                          bands = c("ndvi", "evi"),
                          start_date = "2016-09-01", end_date = "2017-09-01")

# plot the series
sits_plot(point.tb)

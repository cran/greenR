% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_hexmap_3D.R
\name{create_hexmap_3D}
\alias{create_hexmap_3D}
\title{Create a 3D Hexagon Map Using H3 and Mapbox GL JS}
\usage{
create_hexmap_3D(
  data,
  value_col,
  label_col = NULL,
  mapbox_token,
  output_file = "hexagon_map.html",
  color_palette = "interpolateViridis",
  max_height = 5000,
  map_center = NULL,
  map_zoom = 11,
  h3_resolution = 9
)
}
\arguments{
\item{data}{An sf object containing geographical data.}

\item{value_col}{Character, the name of the value column.}

\item{label_col}{Character, the name of the label column (optional).}

\item{mapbox_token}{Character, your Mapbox access token.}

\item{output_file}{Character, the file path to save the HTML file. Default is "hexagon_map.html".}

\item{color_palette}{Character, the D3 color scheme to use. Default is "interpolateViridis".}

\item{max_height}{Numeric, the maximum height for the hexagons. Default is 5000.}

\item{map_center}{Numeric vector of length 2, the center of the map. Default is NULL.}

\item{map_zoom}{Numeric, the zoom level of the map. Default is 11.}

\item{h3_resolution}{Numeric, the H3 resolution for hexagons. Default is 9.}
}
\value{
NULL. The function creates an HTML file and opens it in the viewer or browser if run interactively.
}
\description{
This function creates a 3D hexagon map using H3 and Mapbox GL JS. The input data can be points, linestrings, polygons, or multipolygons.
}
\examples{
if (interactive()) {
  # Generate random data
  lon <- runif(100, min = 8.49, max = 8.56)
  lat <- runif(100, min = 47.35, max = 47.42)
  green_index <- runif(100, min = 0, max = 1)
  data <- data.frame(lon = lon, lat = lat, green_index = green_index)
  data_sf <- sf::st_as_sf(data, coords = c("lon", "lat"), crs = 4326)

  # Specify your Mapbox access token
  mapbox_token <- "your_mapbox_access_token_here"

  # Create the 3D hexagon map
  create_hexmap_3D(
    data = data_sf,
    value_col = "green_index",
    mapbox_token = mapbox_token,
    output_file = "map.html",
    color_palette = "interpolateViridis"
  )
}
}

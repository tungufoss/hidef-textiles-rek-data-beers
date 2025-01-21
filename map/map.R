# Load necessary libraries
library(tidyverse)
library(leaflet)

# Read the CSV file
data <- read_csv("coordinates.csv")

# Map your desired colors to supported `awesomeIcons` colors
color_mapping <- list(
  University = "blue",       # Closest to #10099F
  Collaborator = "green",    # Closest to #2DD2C0
  Factory = "orange",        # Closest to #FFA05F
  `Previous work` = "purple", # Closest to #FC8484
  `Pattern Book` = "red",    # Closest to #FAC55B
  Default = "gray"           # Default fallback color
)

# Add a markerColor and markerIcon column based on the type
data <- data %>%
  mutate(
    markerColor = case_when(
      Type == "University" ~ color_mapping$University,
      Type == "Collaborator" ~ color_mapping$Collaborator,
      Type == "Factory" ~ color_mapping$Factory,
      Type == "Previous work" ~ color_mapping$`Previous work`,
      Type == "Pattern Book" ~ color_mapping$`Pattern Book`,
      TRUE ~ color_mapping$Default
    ),
    markerIcon = case_when(
      Type == "University" ~ "university",
      Type == "Collaborator" ~ "users",
      Type == "Factory" ~ "cogs",
      Type == "Previous work" ~ "history",
      Type == "Pattern Book" ~ "book",
      TRUE ~ "info-circle"
    )
  )

# Initialize the map
map <- leaflet() %>%
  addTiles() %>%
  addProviderTiles(providers$Esri.NatGeoWorldMap)

# Dynamically add layers for each type
unique_types <- unique(data$Type)
for (type in unique_types) {
  # Filter data for the current type
  filtered_data <- filter(data, Type == type)

  # Create icons specific to this layer
  icons <- awesomeIcons(
    icon = filtered_data$markerIcon,
    markerColor = filtered_data$markerColor,
    library = "fa"
  )

  # Add markers for this type
  map <- map %>%
    addAwesomeMarkers(
      data = filtered_data,
      lng = ~Longitude,
      lat = ~Latitude,
      icon = icons,
      group = type,
      label = ~paste0(Name),
      popup = ~paste("<b>", Name, "</b><br>",
                     "Type: ", Type, "<br>",
                     "Latitude: ", Latitude, "<br>",
                     "Longitude: ", Longitude)
    )
}

# Add layer control
map <- map %>%
  addLayersControl(
    overlayGroups = unique_types,
    options = layersControlOptions(collapsed = FALSE)
  ) %>%
  setView(lng = -21, lat = 64, zoom = 6)  # Centered over Iceland

# Display the map
map

# save to html
htmlwidgets::saveWidget(map, file = "map.html", selfcontained = TRUE)
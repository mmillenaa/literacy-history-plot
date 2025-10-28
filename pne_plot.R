library(tidyverse)

# Load your local dataset
pne_data <- read_csv("pnee2018_Contribuicoes_Secao06_ANALISAR.csv")

# Inspect column names
glimpse(pne_data)

# Count contributions by theme (adjust column name if needed)
pne_summary <- pne_data %>%
  count(Tema, sort = TRUE)

# Plot
ggplot(pne_summary, aes(x = reorder(Tema, n), y = n)) +
  geom_col(fill = "#2C3E50") +
  coord_flip() +
  labs(
    title = "Public Contributions to PNE 2018 – Section 6",
    subtitle = "Distribution by Theme",
    x = "Theme",
    y = "Number of Contributions",
    caption = "Source: MEC PNE Consultation Data"
  ) +
  theme_minimal(base_size = 14)
# Load libraries
library(readr)
library(dplyr)
library(ggplot2)

# Load your local dataset
pne_data <- read_csv("pnee2018_Contribuicoes_Secao06_ANALISAR.csv")

# Inspect column names
glimpse(pne_data)

# Count contributions by theme (adjust column name if needed)
pne_summary <- pne_data %>%
  count(Tema, sort = TRUE)

# Plot
ggplot(pne_summary, aes(x = reorder(Tema, n), y = n)) +
  geom_col(fill = "#2C3E50") +
  coord_flip() +
  labs(
    title = "Public Contributions to PNE 2018 – Section 6",
    subtitle = "Distribution by Theme",
    x = "Theme",
    y = "Number of Contributions",
    caption = "Source: MEC PNE Consultation Data"
  ) +
  theme_minimal(base_size = 14)
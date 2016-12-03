

pkgs <- c("gutenbergr", "purrr", "dplyr", "data.table", "ggplot2", "ggthemes", "scales")
pkgLoaded <- sapply(pkgs, require, character.only =T)



platoIndex <- 
  gutenberg_metadata %>%
    filter(author == "Plato", language == "el")

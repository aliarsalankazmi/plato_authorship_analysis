

pkgs <- c("gutenbergr", "purrr", "dplyr", "data.table", "ggplot2", "ggthemes", "scales")
pkgLoaded <- sapply(pkgs, require, character.only =T)



platoIndex <- gutenberg_metadata %>%
                filter(author == "Plato", language == "el")

Sys.setlocale(category = "LC_ALL", locale = "Greek")


platoTitles <- platoIndex %>% 
                  select(gutenberg_id) %>%
                  gutenberg_download(., strip = F, meta_fields = "title", verbose = T) %>%
                  filter(grepl("Title", text, ignore.case = T))
                  group_by(gutenberg_id) %>%
                  slice(20) %>%
                  grepl("Title", ignore.case = T)

  
platoWorks <- platoIndex %>% 
                select(gutenberg_id) %>%
                gutenberg_download(., strip = T, meta_fields = "title", verbose = T)


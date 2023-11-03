### Process both the manual and the tutorials section
# Run from the root!

#install.packages("quarto")
library(quarto)

# Settings:
remove_old_docs <- FALSE # Clean the docs output before rendering
render_manual <- TRUE # Render manual?
preview_manual <- FALSE # Preview manual after rendering
render_tutorial <- TRUE # Render tutorial?
preview_tutorial <- FALSE # Preview tutorial after rendering
remove_old_tutorial <- TRUE # Remove docs/tutorial after copying to docs

if (remove_old_docs) {
  fs::dir_delete("docs")
}

# Render each one
if (render_manual) {
  quarto_render("obis-manual/", as_job = F)
  if (preview_manual) {
    quarto_preview("obis-manual")
  }
}
if (render_tutorial) {
  quarto_render("obis-tutorials/", as_job = F)
  if (preview_tutorial) {
    quarto_preview("obis-tutorials")
  }
}

# Delete the docs/tutorial folder after post processing script
if (remove_old_tutorial) {
  fs::dir_delete("docs/tutorial/")
}

# When you want to stop the preview, run:
# quarto_preview_stop()
  
.onLoad <- function(libname, pkgname) {
  shiny::addResourcePath(
    "headspace-assets",
    system.file("", package = "headspace")
  )
}
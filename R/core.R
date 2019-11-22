#' Include cicerone dependencies in your Shiny UI.
#' 
#' @examples 
#' library(shiny)
#' 
#' ui <- fluidPage(
#'  use_headspace()
#' )
#' 
#' server <- function(input, output){}
#' 
#' if(interactive()) shinyApp(ui, server)
#' 
#' @export
use_headspace <- function() {
  shiny::singleton(
    shiny::tags$head(
      shiny::tags$link(
        href = "headspace-assets/headroom.css",
        rel = "stylesheet",
        type = "text/css"
      ),
      shiny::tags$script(
        src = "headspace-assets/headroom.js"
      ),
      shiny::tags$script(
        src = "headspace-assets/custom.js"
      )
    )
  )
}

#' Give Headspace
#' 
#' Initialise headspace server-side.
#' 
#' @param selector CSS select to apply headroom to.
#' @param session A valid shiny session.
#' 
#' @export
give_headspace <- function(selector = "nav", session = NULL){
  if(is.null(session))
    session <- shiny::getDefaultReactiveDomain()

  session$sendCustomMessage("headspace-init", list(el = selector))
}
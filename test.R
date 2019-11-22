library(shiny)

ui <- navbarPage(
  "headspace",
  tabPanel(
    "Home",
    use_headspace(),
    div(style = "height:200vh;"),
    div(
      style = "height:200vh;",
      h3("Scroll Up")
    )
  )
)

server <- function(input, output) {
  give_headspace()
}

shinyApp(ui, server)

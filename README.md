<!-- badges: start -->
<!-- badges: end -->

# headspace

Give your apps some headroom. Hide your header until you need it: [headroom.js](http://wicky.nillia.ms/headroom.js/) for Shiny.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("JohnCoene/headspace")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(shiny)
library(headspace)

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
```

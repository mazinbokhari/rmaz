#' @import tidyverse
#' @import broom
#' @import plotly
#' @import magrittr

#' @export
pass = function(x=NULL){x}

#' @export
`%nin%` = Negate(`%in%`)

#' This function allows you to collapse a list with the pipe separator (useful for select(matches()) subsetting)
#' @param input_list the list to be collapsed
#' @export
pipe_collapse = function(input_list) {
    input_list %>% glue::glue_collapse('|')
}

#' @export
matches_list = function(input) {
    tidyr::matches(input %>% glue::glue_collapse('|'))
}

#' @export
zplot = function(df_input) {
    df_input %>% zoo::read.zoo %>% zoo::autoplot.zoo(facets=NULL) %>% ggplotly
}

pass = function(x=NULL){x}

zplot = function(df_input) {df_input %>% read.zoo %>% autoplot(facets=NULL) %>% ggplotly}

`%nin%` = Negate(`%in%`)

#' This function allows you to collapse a list with the pipe separator (useful for select(matches()) subsetting)
#' @param input_list the list to be collapsed
#' pipe_collapse()
pipe_collapse = function(input_list) {
    input_list %>% glue::glue_collapse('|')
}

matches_list = function(input) {tidyr::matches(input %>% glue::glue_collapse('|'))}

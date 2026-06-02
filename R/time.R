#' Current time
#'
#' Returns a sentence with the current time
#'
#' @param language Language either "es" (Spanish) or "en" (English)
#'
#' @return A character string
#' @export
#'
#' @examples
#' what_time()
what_time <- function(language = "es") {

  rlang::arg_match0(language, c("es", "en"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    es = sprintf("%s! Ahora son las %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}

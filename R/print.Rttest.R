#' @title print method for Rttest
#'
#' @param x dataframe to print
#' @param ... additional variables
#'
#' @importFrom kableExtra kable
#'
#' @return table of dataframe using kable
#' @export
#'
#' @examples \dontrun{print(out)}
print.Rttest <- function(x,...){
  kable(x$dataframe, format = "simple",...)
}

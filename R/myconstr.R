# first define the function "myconstr", a constructor function that takes two vectors (x and y) and a confidence level (alpha)

#' @title My constructor function
#'
#' @param x X data
#' @param y Y data
#' @param alpha alpha level
#'
#' @importFrom stats t.test
#'
#' @return a list of data, alpha, confidence interval
#' @export
#'
#' @examples \dontrun{myconstr(x = x, y = y, alpha = alpha)}
myconstr <- function(x,y,alpha) {


  # run a t test with this data, and save the confidence interval and p value as variables
  t <- t.test(x,y,var.equal = T, conf.level = (1-alpha))
  ci = t$conf.int
  p = t$p.value

  # output a list containing dataframe with x and y, alpha, c.i. for mux-muy, and pvalue.
  out <- list("dataframe" = data.frame("x" = x, "y" = y),"alpha" = alpha,"ci" = ci,"pvalue" = p)
  # assign the class of the output object
  class(out) <- "Rttest"
  # release output object to command line
  out
}

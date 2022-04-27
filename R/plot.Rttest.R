#' @title plot method for Rttest
#'
#' @param z output from Rttest constructor
#' @param ... additional variables
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom ggplot2 geom_boxplot
#'
#' @return side by side boxplot of data
#' @export
#'
#' @examples \dontrun{plot(out)}
plot.Rttest <- function (x,...){
  box_x <- rep(c("x","y"), c(length(x$dataframe$x),length(x$dataframe$y)))
  box_y <- c(x$dataframe$x,x$dataframe$y)
  box_df <- data.frame("box_y" = box_y, "box_x" = box_x)
  ggplot(box_df,...) + geom_boxplot(aes(x = box_x, y = box_y, fill = box_x))
}

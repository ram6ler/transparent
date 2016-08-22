

#' setAlpha
#'
#' Set the alpha level of a standard R colour.
#'
#' @param col A character specifying a standard R colour
#' @param alpha A numeric in [0, 1] specifying the alpha level
#'
#' @return A character vector with elements of 7 or 9 characters, "#" followed by the red, blue, green and optionally alpha values in hexadecimal (after rescaling to 0 ... 255).
#' @export
#'
#' @examples
#'
#' plot(
#'   rnorm(10000),
#'   rnorm(10000),
#'   pch = 16,
#'   col = setAlpha("slateblue", 0.2)
#' )
setAlpha <- function(col, alpha) {
  temp <- col2rgb(col) / 255
  r <- temp["red", ]
  g <- temp["green", ]
  b <- temp["blue", ]
  rgb(r, g, b, alpha)
}

#' circle
#'
#' Add a circle to a plot.
#'
#' @param x Numeric x coordinate of circle centre
#' @param y Numeric x coordinate of circle centre
#' @param r Numeric radius of circle centre
#' @param dth Numeric angle step size affecting smoothness of circumference
#' @param ... Arguments to be fed to \code{polygon}
#'
#' @export
#'
#' @examples
#' plot.new()
#' plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
#' circle(0, 0, 1)
circle <- function(x, y, r, dth = pi / 50, ...) {
  thetas <- seq(0, 2 * pi, by = dth)
  xs <- sapply(thetas, cos) * r + x
  ys <- sapply(thetas, sin) * r + y
  polygon(
    x = xs,
    y = ys,
    ...
  )
}

#' rectangle
#'
#' Add a rectangle to a plot.
#'
#' @param x Numeric lower left corner x coordinate
#' @param y Numeric lower left corner y coordinate
#' @param w Numeric width of the rectiangle
#' @param h Numeric height of the rectiangle
#' @param ... Arguments to be fed to \code{polygon}
#'
#' @export
#'
#' @examples
#' plot.new()
#' plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
#' circle(-0.5, -0.5, 1, 1)
rectangle <- function(x, y, w, h, ...) {
  polygon(
    x = c(x, x, x + w, x + w),
    y = c(y, y + h, y + h, y),
    ...
  )
}
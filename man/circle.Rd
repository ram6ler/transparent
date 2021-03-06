% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{circle}
\alias{circle}
\title{circle}
\usage{
circle(x, y, r, dth = pi/50, ...)
}
\arguments{
\item{x}{Numeric x coordinate of circle centre}

\item{y}{Numeric x coordinate of circle centre}

\item{r}{Numeric radius of circle centre}

\item{dth}{Numeric angle step size affecting smoothness of circumference}

\item{...}{Arguments to be fed to \code{polygon}}
}
\description{
Add a circle to a plot.
}
\examples{
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
circle(0, 0, 1)
}


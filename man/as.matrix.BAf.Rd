% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/2.data_access.R
\name{as.matrix.BAf}
\alias{as.matrix.BAf}
\title{as.matrix.BAf}
\usage{
\method{as.matrix}{BAf}(x, ...)
}
\arguments{
\item{x}{an object of the \code{\link{BAf-class}}}

\item{...}{not used}
}
\value{
a \code{\link{matrix}} that contains all measurement values
}
\description{
This is defined because \code{as.matrix} returns a \code{BAf} object when it
was given as a input of the function.
}
\examples{
data(sba)
as.matrix(sba)

}
\author{
Mun-Gwan Hong <\email{mun-gwan.hong@scilifelab.se}>
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_QC_binder.R
\name{plot_QC_binder_corr_hist}
\alias{plot_QC_binder_corr_hist}
\title{Correlation with a binder}
\usage{
plot_QC_binder_corr_hist(
  baf,
  b_id,
  incl = rep(T, ncol(baf)),
  method = c("spearman", "pearson", "kendall"),
  use = "complete.obs",
  xlab = paste("Corr. with", b_id),
  main = paste("Histogram of", xlab),
  ...,
  show_count = TRUE
)
}
\arguments{
\item{baf}{an object of the \code{\link{BAf-class}}}

\item{b_id}{one binder IDs in numeric or in character with repeat indicator
if necessary.}

\item{incl}{whether each column is included or not. This can be used to
exclude other control binders}

\item{method, use}{refer to \code{\link{cor}}}

\item{main, xlab, ...}{pass over to \code{\link{hist}}}

\item{show_count}{whether the count is displayed or not.}
}
\value{
a list having two elements, computed correlation values and the
  output of \code{\link{hist}}
}
\description{
This depicts the distribution of correlation between a binder and all others.
}
\examples{
data(sba)
plot_QC_binder_corr_hist(sba, "rabbit IgG")

}
\author{
Mun-Gwan Hong <\email{mun-gwan.hong@scilifelab.se}>
}

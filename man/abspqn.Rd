% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/norm_AbsPQN.R
\name{abspqn}
\alias{abspqn}
\alias{abspqn,matrix-method}
\alias{abspqn,BAf-method}
\title{Antibody Specific Probabilistic Quotient Normaliation}
\usage{
abspqn(X, ...)

\S4method{abspqn}{matrix}(X, ...)

\S4method{abspqn}{BAf}(X, by_s = NULL, by_b = NULL, ...)
}
\arguments{
\item{X}{a \code{\link{matrix}} or a \code{\link{BAf-class}} object}

\item{...}{not used}

\item{by_s, by_b}{same as \code{by_s} and \code{by_s} in
\code{\link{apply_per_group}}. If any of these are given the \code{pqn} is
applied per group divided by these variables.}
}
\value{
\code{\link{matrix}} (or \code{\link{BAf-class}} object) after the
  normalization
}
\description{
Normalize the data applying a variation of Probabilistic Quotient method
introduced in Dieterle et al.(2006), called AbsPQN.
}
\examples{
data(sba)
sba2 <- abspqn(sba[sba@sinfo$cohort != "EMPTY", ])
plot_QC_sample_signal_boxplot(sba2)

}
\references{
Dieterle et al. (2006) Probabilistic quotient normalization.. - Anal.Chem
}
\seealso{
\code{\link{apply_per_group}}
\code{\link{norm_PQN}}
}
\author{
Mun-Gwan Hong <\email{mun-gwan.hong@scilifelab.se}>
}

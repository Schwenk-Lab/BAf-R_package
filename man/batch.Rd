% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1.batch_ids.R
\name{batch}
\alias{batch}
\alias{batch,BAf-method}
\alias{batch<-}
\alias{batch<-,BAf-method}
\alias{batch_colname}
\alias{batch_colname,BAf-method}
\alias{n_batch}
\alias{n_batch,BAf-method}
\title{Access batch IDs}
\usage{
batch(x, ...)

\S4method{batch}{BAf}(x, wise = c("sinfo", "binder"))

batch(x, ...) <- value

\S4method{batch}{BAf}(x, wise = c("sinfo", "binder")) <- value

batch_colname(x, ...)

\S4method{batch_colname}{BAf}(x, wise = c("sinfo", "binder"))

n_batch(x, ...)

\S4method{n_batch}{BAf}(x)
}
\arguments{
\item{x}{an object of the \code{\link{BAf-class}}}

\item{...}{for other functions with same name}

\item{wise}{which batch, sample-wise or binder-wise.}

\item{value}{a \code{\link{vector}} of new batch IDs. It should be either a
single value or in exactly same dimension as the previous values.}
}
\value{
\code{batch}: a \code{vector} of batch IDs for binders/samples

\code{batch_colname}: a character of the name of the column that contains
 sample/binder batch IDs\cr

\code{n_batch}: a list of the numbers of sample/binder batches
}
\description{
\code{batch} gets and \code{batch<-} assigns a vector of batch IDs for
binders/samples. The ID is used to distinguish separate assay runs.
}
\examples{
data(sba)
batch(sba, "binder")               # get batch IDs
batch(sba, "binder") <- rep(c("AY10", "AY11"), each= ncol(sba) / 2)
batch(sba, "b")               # short name is also allowed.

batch(sba, "sinfo")
batch(sba, "sinfo") <- rep(LETTERS[1:4], each= 96)
batch(sba, "sinfo")[1:96] <- "A"
batch(sba, "sample")     # 'sample' instead of 'sinfo' is also allowed.

n_batch(sba)
 
}

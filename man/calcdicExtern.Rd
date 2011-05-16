\name{calcdicExtern}
\alias{calcdicExtern}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculates DIC
}
\description{
This function calculates the DIC score for an object return by \code{bayesPref}.
}
\usage{
calcdicExtern(pData = NULL, prefres = NULL, pops = TRUE, 
dicburn = 0, estip = TRUE, measure = "median", constrainP = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pData}{
A matrix of count data, rows are replicates or individuals and columns are categories.
}
  \item{prefres}{
An object returned by \code{bayesPref}.
}
  \item{pops}{
A Boolean indicating whether the first column of the matrix are values indicating populations.
}
  \item{dicburn}{
A value indicating the number of burnin samples discarded for DIC calculation.
}
  \item{estip}{
A boolean indicating whether to attempt to estimate individual preferences or only estimate population preference (the latter used a multivariate Polya).
}
  \item{measure}{
Indicates whether the "mean" or "median" is used for calculating DIC.
}
  \item{constrainP}{
A vector with one entry per population giving the group each population belongs to.
}
}

\author{
Zachariah Gompert \email{zgompert@uwyo.edu}, James A. Fordyce \email{jfordyce@utk.edu}
}
\examples{
\dontrun{
data(YGGV)
res <- bayesPref(pData=YGGV,mcmcL=1000)
calcdicExtern(pData=YGGV,prefres=res,pops=TRUE,dicburn=100) 
}}

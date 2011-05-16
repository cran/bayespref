\name{pairwiseProb}
\alias{pairwiseProb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pairwise probability for differences in preference
}
\description{
This function calculates the pairwise probability that preference among items differs. It provides the probability that row > column.
}
\usage{
pairwiseProb(prefres = NULL, burn = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prefres}{
An object returned by \code{bayesPref}.
}
  \item{burn}{
A value indicating the number of burnin samples discarded.
}
}
\details{
This function examines the proportion of times a certain preference parameter is ranked over an alternate preference parameter across each post burnin MCMC step. It can be interpreted as a post-hoc test to the results obtained from \code{bayesPref}.
}
\value{
A square matrix of pairwise comparisons giving the probability that row > column.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
Zachariah Gompert \email{zgompert@uwyo.edu}, James A. Fordyce \email{jfordyce@utk.edu}
}

\examples{
\dontrun{
data(YGGV)
res <- bayesPref(pData=YGGV,mcmcL=1000)
pairwiseProb(prefres=res[[1]],burn=100) #pairwise probability for population 1
}}
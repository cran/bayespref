\name{credibleIntervals}
\alias{credibleIntervals}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculates credible intervals for preferences
}
\description{
This function calculates the credible intervals for preference parameters for individuals and the population using the object created by the function \code{bayesPref}.
}
\usage{
credibleIntervals(prefres = NULL, burn = 0, interval = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prefres}{
An object returned by \code{bayesPref}.
}
  \item{burn}{
A value indicating the number of burnin samples discarded.
}
  \item{interval}{
A value between 0 and 1 indicating the size of the credible interval calculated.
}
}

\value{
%%  ~Describe the value returned
A list containing the following
\item{IndPref}{An array containing the lower credible interval, the median, and upper credible interval for the individual-level preference parameters.}
\item{PopPref}{An array containing the lower credible interval, the median, and upper credible interval for the population-level preference parameters.}
\item{PopVar}{A vector for the lower credible interval, the median, and upper credible interval for the variance of the population-level preference parameters (variance of alphas in Dirichlet).}

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
credibleIntervals(prefres=res[[1]],burn=100) #credible intervals for population 1
}}
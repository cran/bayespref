\name{YGGV}
\alias{YGGV}
\docType{data}
\title{
Oviposition preference data from Yuba Gap, CA and Gardnerville, NV.
}
\description{
A data matrix of experimental host plant choice data from two population of Lycaeides.
}
\usage{data(YGGV)}
\format{
  A data frame with 26 observations on the following 5 variables.
  \describe{
    \item{\code{Pop}}{a numeric vector}
    \item{\code{Ast}}{a numeric vector}
    \item{\code{Lotus}}{a numeric vector}
    \item{\code{Lupine}}{a numeric vector}
    \item{\code{Medicago}}{a numeric vector}
  }
}
\details{
Pop 1 is Yuba Gap, CA and Pop 2 is Gardnerville, NV.
}
\source{
Gompert, Z., J.A. Fordyce, M.L. Forister, A.M. Shapiro, & C.C. Nice. 2006. Homoploid hybrid speciation in an extreme habitat. Science 314:1923-1925.
}
% \references{
% %%  ~~ possibly secondary sources and usages ~~
% }
\examples{
data(YGGV)
boxplot(YGGV[,2:5])
str(YGGV)
}
\keyword{datasets}

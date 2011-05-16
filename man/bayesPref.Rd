\name{bayesPref}
\alias{bayesPref}
\title{
Hierarchical Bayesian model for count data
}
\description{
This function implements a hierarchical Bayesian model for count data. Preference parameters are estimated using MCMC.
}
\usage{
bayesPref(pData = NULL, mcmcL = 1000, dirvar = 2, calcdic = TRUE,
constrain = FALSE, pmpriorLB = 1, pmpriorUB = 50, ppprior = NULL,
dicburn = 100,indc = TRUE, pops = TRUE, pminit = NULL, ppinit = NULL, 
ipinit = NULL, constrainP = NULL, diradd = 0.1, univar = 2,
estip = TRUE, measure = "mean")
}
\arguments{
  \item{pData}{
A matrix of count data, rows are replicates or individuals and columns are categories.
}
  \item{mcmcL}{
A value indicating the length of the mcmc chain (recommended > 5000).
}
  \item{dirvar}{
A value for multiplier for population preference proposals. Increase to decrease proposal distances.
}
  \item{calcdic}{
A Boolean for returning DIC.
}
  \item{constrain}{
A Boolean for constraining population-level preferences to be equal.
}
  \item{pmpriorLB}{
A value setting the lower bounds of uniform prior for popmult.
}
  \item{pmpriorUB}{
A value setting the upper bounds of uniform prior for popmult.
}
  \item{ppprior}{
A vector of alphas for Dirichlet prior on population preference.
}
  \item{dicburn}{
A value indicating the number of burnin samples discarded for DIC calculation.
}
  \item{indc}{
A Boolean indicating an independence chain (default) vs. random-walk for populationlevel preferences.
}
  \item{pops}{
A Boolean indicating whether the first column of the matrix are values indicating populations.
}
  \item{pminit}{
A value indicating the initial value for the population multiplier.
}
  \item{ppinit}{
A vector or matrix of initial values population preferences.
}
  \item{ipinit}{
A vector or matrix of initial values for individual-level preferences. 
}
  \item{constrainP}{
A vector with one entry per population giving the group each population belongs to.
}
  \item{diradd}{
A value added to the Dirichlet proposal for population preferences.
}
  \item{univar}{
A value that is the jump distance for univorm variance parameter.
}
  \item{estip}{
A boolean indicating whether to attempt to estimate individual preferences or only estimate population preference (the latter used a multivariate Polya).
}
  \item{measure}{
Indicates whether the "mean" or "median" is used for calculating DIC.
}
}
\details{
Populations are indicated in the first column (if present) as integers. constrainP provides a way to group populations with the goal of comparing among various models. For example, if there are 3 populations in the data (indicated as 1, 2, 3) and it is desired to examine a model where populations 1 and 3 are constrained to have the same population-level preference parameters, constrainP=c(1,2,1).

The mixing of the chains should be observed by plotting each step in the chain against a population-level preference parameter, for example. Tuning parameters (e.g., dirvar), or initial starting conditions (e.g., ppinit) can be modified for better mixing if needed. 


}
\value{
A list containing the following for each population in the analysis.
\item{IndPref}{An array containing the individual-level preference parameter estimates for each step in the MCMC.}
\item{PopPref}{An array containing the population-level preference parameter estimates for each step in the MCMC.}
\item{likelihood}{The log-likelihood of the model given the parameter estimates for each step in the MCMC.}
\item{dic}{The deviance information criterion score for the model.}

}

\author{
Zachariah Gompert \email{zgompert@uwyo.edu}, James A. Fordyce \email{jfordyce@utk.edu}
}
\note{
Even if only one population is present, the values are returned in a list of length one.
}


\examples{
\dontrun{
data(YGGV)
res <- bayesPref(pData=YGGV,mcmcL=1000)
}}

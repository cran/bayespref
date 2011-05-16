\name{prefPlot}
\alias{prefPlot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot population and individual preferences
}
\description{
This function will plot the posterior densities for population-level and individual-level preferences based upon a \code{bayesPref} analysis.
}
\usage{
prefPlot(prefres = NULL, burn = 0, ind = TRUE, pop = TRUE, dist = FALSE, 
ymax = 5, xmin = 0, xmax = 1, dadj = 2, colors = NULL, leg = FALSE, 
lx = 0.8, ly = 4, catname = NULL, ps = FALSE, file = "./prefplot.eps")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prefres}{
An object returned by \code{bayesPref}.
}
  \item{burn}{
A value indicating the number of burnin samples discarded.
}
  \item{ind}{
A boolean indicating whether to plot individual-level preferences.
}
  \item{pop}{
A boolean indicating whether to plot population-level preferences.
}
  \item{dist}{
A boolean indicating whether to plot population-level preferences based on density of the posterior (default), or whether to plot population-level preferences based on the estimate of the Dirichlet alphas.
}
  \item{ymax}{
A value indicating the maximum value for the y-axis.
}
  \item{xmin}{
A value indicating the minimum value for the x-axis.
}
  \item{xmax}{
A value indicating the maximum value for the x-axis.
}
  \item{dadj}{
A value indicating the bandwidth used for the smoothing of the density plot.
}
  \item{colors}{
A vector indicating the colors used for plotting.
}
  \item{leg}{
A Boolean indicating whether to include a legend in the plot.
}
  \item{lx}{
A value indicating where the legend begins on the horizontal (x-axis).
}
  \item{ly}{
A value indicating where the legend begins on the vertical (y-axis).
}
  \item{catname}{
A vector indicating the names associated with the legend.
}
  \item{ps}{
A Boolean indicating whether to write the plot to a file.
}
  \item{file}{
The name of the file the plot is written to.
}
}

\author{
Zachariah Gompert \email{zgompert@uwyo.edu}, James A. Fordyce \email{jfordyce@utk.edu}
}

\examples{
\dontrun{
data(YGGV)
res <- bayesPref(pData=YGGV,mcmcL=1000)

prefPlot(prefres=res[[1]],burn=100,pop=TRUE) 

prefPlot(prefres=res[[1]],burn=100,pop=TRUE,ymax=15,leg=TRUE,
catname=c("Astragalus"," Lotus","Lupine","Medicago"),lx=0.6,ly=14) #includes legend

prefPlot(prefres=res[[1]],burn=100,ind=FALSE,pop=TRUE,ymax=15,leg=TRUE,
catname=c("Astragalus"," Lotus","Lupine","Medicago"),lx=0.6,ly=14) #includes only 
population posterior and legend
}}
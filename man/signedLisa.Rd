% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlationStatistics.R
\name{signedLisa}
\alias{signedLisa}
\title{Signed local indicators of spatial association to identify regions driving global autocorrelation}
\usage{
signedLisa(x, weight, alternative = "greater")
}
\arguments{
\item{x}{Feature value}

\item{weight}{Adjacency weight matrix}

\item{alternative}{"two.sided", "less", or "greater"}
}
\value{
Signed LISA statistic for each point
}
\description{
Signed local indicators of spatial association to identify regions driving global autocorrelation
}
\examples{
data(mOB)
pos <- mOB$pos
weight <- getSpatialNeighbors(pos)
gexp <- normalizeCounts(mOB$counts, log=FALSE, verbose=FALSE)['Camk4',]
plotEmbedding(pos, colors=gexp, cex=3)
slisa <- signedLisa(gexp, weight)
plotEmbedding(pos, colors=slisa, cex=3,
   gradientPalette=colorRampPalette(c('darkgreen', 'white', 'darkorange'))(100))

}

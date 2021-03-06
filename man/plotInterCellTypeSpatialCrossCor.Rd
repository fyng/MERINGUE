% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plotInterCellTypeSpatialCrossCor}
\alias{plotInterCellTypeSpatialCrossCor}
\title{Expression correlation between cells of group A expressing gene A with neighbors of cells of group A in group B expressing gene B}
\usage{
plotInterCellTypeSpatialCrossCor(
  gexpA,
  gexpB,
  groupA,
  groupB,
  weight,
  fun = mean,
  ...
)
}
\arguments{
\item{gexpA}{Expression of gene A}

\item{gexpB}{Expression of gene B}

\item{groupA}{Cells of group A}

\item{groupB}{Cells of group B}

\item{weight}{Adjacency weight matrix}

\item{fun}{Function for combining multiple gene expression values (ex. mean, median, max)}

\item{...}{Additional plotting parameters}
}
\value{
None
}
\description{
Expression correlation between cells of group A expressing gene A with neighbors of cells of group A in group B expressing gene B
}
\examples{
# Simulate data
set.seed(0)
N <- 100
pos <- cbind(rnorm(N), rnorm(N))
rownames(pos) <- paste0('cell', 1:N)
colnames(pos) <- c('x', 'y')
weight <- getSpatialNeighbors(pos)
ctA <- sample(rownames(pos), N/2)
ctB <- setdiff(rownames(pos), ctA)
gexpA <- pos[,2]
gexpA[ctB] <- 0
gexpB <- -pos[,2]
gexpB[ctA] <- 0
plotEmbedding(pos, col=gexpA)
plotEmbedding(pos, col=gexpB)
plotInterCellTypeSpatialCrossCor(gexpA, gexpB, ctA, ctB, weight)
plotInterCellTypeSpatialCrossCor(gexpB, gexpA, ctB, ctA, weight)

}

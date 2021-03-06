% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MDSRefMap.R
\name{MDSProjection}
\alias{MDSProjection}
\title{Construction of a MDS Projection}
\usage{
MDSProjection(refmap, dist, k = 2, init = "svd", metric = "euclidean",
  max_it = 6 * 10^6, stress_sd_th = 10^-4, stack_length = 500,
  verbose = TRUE)
}
\arguments{
\item{refmap}{a result from RefMap function}

\item{dist}{a numeric matrix with all pairwise distances between objects of the representation}

\item{k}{a numeric value specifying the desired number of dimensions in the resulting MDS Projection representation}

\item{init}{a character or a numeric matrix specifying how the objects are positioned in the initial configuration. Possible character values are 'rand', 'center', 'svd' (please refer to the details section for more details). Object positions in the initial configuration can be explicitly specified using a numeric matrix where the rows correspond to the objects and where the columns correspond to the MDS dimensions.}

\item{metric}{a character indicating the distance metric to use ("euclidean" or "manhattan")}

\item{max_it}{a numeric defining the maximal number of steps the algorithm can perform}

\item{stress_sd_th}{a numeric defining the threshold for the standard deviation of Kruskal Stress}

\item{stack_length}{a numeric defining the length of the Kruskal Stress stack (used to compute the standard deviation of the Kruskal Stress)}

\item{verbose}{a boolean enabling the display of debug information at each step of the algorithm}
}
\value{
a list of 3 elements containing the position of the objects ('points' element), the Kruskal Stress ('stress' element), and the Entourage Score ('entourage' element)
}
\description{
This function computes a MDS Projection based on MDS Reference Map and a distance matrix.

A MDS Projection consists on a MDS Reference Map on which additional objects have been overlayed.
MDS Projections can be computed based on the Euclidean or Manhattan metrics using the 'metric' parameter.
The initialization space of object positions can be specified using the 'init' parameter.
}
\details{
Use RefMaps algorithm to compute the projection of additional objects.
Efficient to compare multiple projection, for example made on subsets of large biologicals datasets.

This implementation allows to used incomplete distance matrices (distance matrices with missing values modeled by NA).
Furthermore, distance matrices can be computed based on the Euclidean or Manhattan metrics. 

This implementation has been implemented in C++ to handle large sets of high-dimensional objects.
}


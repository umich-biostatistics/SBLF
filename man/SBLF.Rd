% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SBLF.R
\name{SBLF}
\alias{SBLF}
\title{Fit Spatial Bayesian Latent Factor Models}
\usage{
SBLF(
  xtrain,
  xtest,
  ztrain,
  ztest,
  voxel_loc,
  seed = NULL,
  burnin = NULL,
  iter = NULL
)
}
\arguments{
\item{xtrain}{training data set of imaging predictors. Sample size is \code{ntrain * (P * image_len)}}

\item{xtest}{test data set of imaging predictors. sample size is \code{(ntotal-ntrain) * (P * image_len)}}

\item{ztrain}{training data set of imaging outcomes. Sample size is \code{(ntrain * image_len)}}

\item{ztest}{test data set of imaging outcomes. Sample size is \code{((ntotal-ntrain) * image_len)}}

\item{voxel_loc}{matrix of voxel coordinates.}

\item{seed}{integer random seed value}

\item{burnin}{integer number of burnin draws}

\item{iter}{integer total number of draws}
}
\value{
A list which contains
\itemize{
\item{draws: }{A named list of posterior draws}
\item{posterior_means: }{A named list of posterior means}
\item{data: }{A named list of data sets used for model fitting}
}
}
\description{
Use this function to fit spatial Bayesian latent factor models given
the prepared input data sets.
}
\details{
The parameters prefixed with "x" are imaging predictor data, and
the parameters prefixed with "z" are imaging outcomes.

The function expects all data to be entered as matrices with the dimensions
outlined in each of the parameter arguments.
}
\examples{
\donttest{
  mod = SBLF(xtrain, xtest, ztrain, ztest, voxel_loc, seed = 1234, burnin = 250, iter = 500)
  mse(mod)
}

}

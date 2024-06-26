% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\docType{class}
\name{MVIVWME-class}
\alias{MVIVWME-class}
\title{MVIVWME Class}
\description{
An object containing the estimates produced using the multivariable inverse-variance weighted (IVW) method with measurement error, as well as various statistics.
}
\section{Slots}{

\describe{
\item{\code{Model}}{The model used for estimation: random-effects (\code{"random"}) or fixed-effect (\code{"fixed"}). The default option (\code{"default"}) is to use a fixed-effect model when there are three or fewer genetic variants, and a random-effects model when there are four or more. The (multiplicative) random-effects model allows for heterogeneity between the causal estimates targeted by the genetic variants by allowing over-dispersion in the regression model. Under-dispersion is not permitted (in case of under-dispersion, the residual standard error is set to 1, as in a fixed-effect analysis).}

\item{\code{Exposure}}{The names of the exposure variables.}

\item{\code{Outcome}}{The name of the outcome variable.}

\item{\code{Correlation}}{The matrix of correlations between genetic variants.}

\item{\code{Estimate}}{The causal estimates from the inverse-variance weighted method.}

\item{\code{StdError}}{The standard errors associated with \code{Estimate}.}

\item{\code{CILower}}{The lower bounds of the confidence interval for \code{Estimate} based on \code{StdError}.}

\item{\code{CIUpper}}{The upper bounds of the confidence interval for \code{Estimate} based on \code{StdError}.}

\item{\code{Alpha}}{The significance level used in constructing the confidence interval (default is 0.05).}

\item{\code{Pvalue}}{P-value associated with the causal estimate.}

\item{\code{SNPs}}{The number of SNPs that were used in the calculation.}

\item{\code{RSE}}{The estimated residual standard error from the regression model.}

\item{\code{Heter.Stat}}{Heterogeneity statistic (Cochran's Q statistic) and associated p-value: the null hypothesis is that all genetic variants estimate the same causal parameter; rejection of the null is an indication that one or more variants may be pleiotropic.}
}}


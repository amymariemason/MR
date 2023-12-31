% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/mr_ivw-methods.R
\docType{methods}
\name{mr_ivw}
\alias{mr_ivw}
\alias{mr_ivw,MRInput-method}
\title{Inverse-variance weighted method}
\usage{
mr_ivw(
  object,
  model = "default",
  robust = FALSE,
  penalized = FALSE,
  weights = "simple",
  psi = 0,
  correl = FALSE,
  distribution = "normal",
  alpha = 0.05,
  ...
)

\S4method{mr_ivw}{MRInput}(
  object,
  model = "default",
  robust = FALSE,
  penalized = FALSE,
  weights = "simple",
  psi = 0,
  correl = FALSE,
  distribution = "normal",
  alpha = 0.05,
  ...
)
}
\arguments{
\item{object}{An \code{MRInput} object.}

\item{model}{What type of model should be used: \code{"default"}, \code{"random"} or \code{"fixed"}. The random-effects model (\code{"random"}) is a multiplicative random-effects model, allowing overdispersion in the weighted linear regression (the residual standard error is not fixed to be 1, but is not allowed to take values below 1). The fixed-effect model (\code{"fixed"}) sets the residual standard error to be 1. The \code{"default"} setting is to use a fixed-effect model with 3 genetic variants or fewer, and otherwise to use a random-effects model.}

\item{robust}{Indicates whether robust regression using the \code{lmrob()} function from the package \code{robustbase} should be used in the method rather than standard linear regression (\code{lm}).}

\item{penalized}{Indicates whether a penalty should be applied to the weights to downweight the contribution of genetic variants with outlying ratio estimates to the analysis.}

\item{weights}{Which weights to use in the weighted regression. If \code{"simple"} (the default option), then the IVW estimate is equivalent to meta-analysing the ratio estimates from each variant using inverse-variance weights based on the simplest expression of the variance for the ratio estimate (first-order term from the delta expansion - standard error of the association with the outcome divided by the association with the exposure). If \code{"delta"}, then the variance expression is the second-order term from the delta expansion. The second-order term incorporates uncertainty in the genetic association with the exposure -- this uncertainty is ignored using the simple weighting.}

\item{psi}{The correlation between the genetic associations with the exposure and the association with the outcome for each variant resulting from sample overlap. The default value is \code{0}, corresponding to a strict two-sample Mendelian randomization analysis (no overlap). If there is complete overlap between the samples, then the correlation should be set to the observational correlation between the exposure and the outcome. This correlation is only used in the calculation of standard errors if the option \code{weights} is set to \code{"delta"}.}

\item{correl}{If the genetic variants are correlated, then this correlation can be accounted for. The matrix of correlations between must be provided in the \code{MRInput} object: the elements of this matrix are the correlations between the individual variants (diagonal elements are 1). If a correlation matrix is specified in the \code{MRInput} object, then \code{correl} is set to \code{TRUE}. If \code{correl} is set to \code{TRUE}, then the values of \code{robust} and \code{penalized} are taken as \code{FALSE}, and \code{weights} is set to \code{"simple"}.}

\item{distribution}{The type of distribution used to calculate the confidence intervals. Options are \code{"normal"} (default) or \code{"t-dist"}.}

\item{alpha}{The significance level used to calculate the confidence interval. The default value is 0.05.}

\item{...}{Additional arguments to be passed to the regression method.}
}
\value{
The output from the function is an \code{IVW} object containing:

 \item{Model}{A character string giving the type of model used (\code{"fixed"}, \code{"random"}, or \code{"default"}).}
 \item{Exposure}{A character string giving the name given to the exposure.}
 \item{Outcome}{A character string giving the name given to the outcome.}
 \item{Correlation}{The matrix of genetic correlations.}
 \item{Robust}{\code{TRUE} if robust regression has been used to calculate the estimate, \code{FALSE} otherwise.}
 \item{Penalized}{\code{TRUE} if weights have been penalized, \code{FALSE} otherwise.}
 \item{Estimate}{The value of the causal estimate.}
 \item{StdError}{Standard error of the causal estimate.}
 \item{CILower}{The lower bound of the causal estimate based on the estimated standard error and the significance level provided.}
 \item{CIUpper}{The upper bound of the causal estimate based on the estimated standard error and the significance level provided.}
 \item{Alpha}{The significance level used when calculating the confidence intervals.}
 \item{Pvalue}{The p-value associated with the estimate (calculated as Estimate/StdError as per Wald test) using a normal or t-distribution (as specified in \code{distribution}).}
 \item{SNPs}{The number of genetic variants (SNPs) included in the analysis.}
 \item{RSE}{The estimated residual standard error from the regression model.}
 \item{Heter.Stat}{Heterogeneity statistic (Cochran's Q statistic) and associated p-value: the null hypothesis is that all genetic variants estimate the same causal parameter; rejection of the null is an indication that one or more variants may be pleiotropic.}
\item{Fstat}{An approximation of the first-stage F statistic for all variants based on the summarized data.}
}
\description{
The \code{mr_ivw} function implements the inverse-variance method, informally known as the "Toby Johnson" method. With a single
genetic variant, this is simply the ratio method.
}
\details{
With multiple uncorrelated genetic variants, this estimate can be thought of as: 1) the inverse-variance
weighted combination of the ratio estimates from a meta-analysis; 2) the ratio estimate from combining the
genetic variants into a weighted score and then using this score as an instrumental variable (the same estimate
is obtained from the two-stage least squares method using individual-level data); 3) the coefficient from
weighted linear regression of the associations with the outcome on the associations with the risk factor fixing
the intercept to zero and using the inverse-variance weights.

Here, we implement the method using weighted linear regression. If the variants are correlated, the method is implemented using generalized weighted linear regression; this is hard coded using matrix algebra.

The causal estimate is obtained by regression of the associations with the outcome on the associations with the risk factor, with the intercept set to zero and weights being the inverse-variances of the associations with the outcome.

With a single genetic variant, the estimate is the ratio of coefficients betaY/betaX and the standard error is the first term of the delta method approximation betaYse/betaX.
}
\examples{
mr_ivw(mr_input(bx = ldlc, bxse = ldlcse, by = chdlodds, byse = chdloddsse))
mr_ivw(mr_input(bx = ldlc, bxse = ldlcse, by = chdlodds, byse = chdloddsse),
  robust = TRUE)
mr_ivw(mr_input(bx = ldlc, bxse = ldlcse, by = chdlodds, byse = chdloddsse),
  penalized = TRUE)
mr_ivw(mr_input(calcium, calciumse, fastgluc, fastglucse, corr=calc.rho))
  ## correlated variants

}
\references{
Original implementation: The International Consortium for Blood Pressure Genome-Wide Association Studies. Genetic variants in novel pathways influence blood pressure and cardiovascular disease risk. Nature 2011; 478:103-109. doi: 10.1038/nature10405.

Detailed description of method: Stephen Burgess, Adam S Butterworth, Simon G Thompson. Mendelian randomization analysis with multiple genetic variants using summarized data. Genetic Epidemiology 2013; 37:658-665. doi: 10.1002/gepi.21758.

Robust and penalized weights: Stephen Burgess, Jack Bowden, Frank Dudbridge, Simon G Thompson. Robust instrumental variable methods using multiple candidate instruments with application to Mendelian randomization. arXiv 2016; 1606.03729.

Heterogeneity test: Fabiola del Greco, Cosetta Minelli, Nuala A Sheehan, John R Thompson. Detecting pleiotropy in Mendelian randomisation studies with summary data and a continuous outcome. Stat Med 2015; 34(21):2926-2940. doi: 10.1002/sim.6522.

Simple versus delta weights (first-order versus second-order): Stephen Burgess, Jack Bowden. Integrating summarized data from multiple genetic variants in Mendelian randomization: bias and coverage properties of inverse-variance weighted methods. arXiv:1512.04486.
}

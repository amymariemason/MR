% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/mr_conmix-methods.R
\docType{methods}
\name{mr_conmix}
\alias{mr_conmix}
\alias{mr_conmix,MRInput-method}
\title{Contamination mixture method}
\usage{
mr_conmix(object, psi = 0, CIMin = NA, CIMax = NA, CIStep = 0.01, alpha = 0.05)

\S4method{mr_conmix}{MRInput}(object, psi = 0, CIMin = NA, CIMax = NA, CIStep = 0.01, alpha = 0.05)
}
\arguments{
\item{object}{An \code{MRInput} object.}

\item{psi}{The value of the standard deviation of the distribution of invalid estimands (default value is 0, corresponding to 1.5 times the standard deviation of the ratio estimates).}

\item{CIMin}{The smallest value to use in the search to find the confidence interval. The default value is NA, which means that the method uses the smallest value of the lower bound of the 95\% confidence interval for the variant-specific ratio estimates as the smallest value.}

\item{CIMax}{The largest value to use in the search to find the confidence interval. The default value is NA, which means that the method uses the greatest value of the upper bound of the 95\% confidence interval for the variant-specific ratio estimates as the largest value.}

\item{CIStep}{The step size to use in the search to find the confidence interval (default is 0.01). The confidence interval is determined by a grid search algorithm. Using the default settings, we calculate the likelihood at all values from -1 to +1 increasing in units of 0.01. If this range is too large or the step size is too small, then the method will take a long time to run.}

\item{alpha}{The significance level used to calculate the confidence interval. The default value is 0.05.}
}
\value{
The output from the function is an \code{MRConMix} object containing:

 \item{Exposure}{A character string giving the name given to the exposure.}
 \item{Outcome}{A character string giving the name given to the outcome.}
 \item{Psi}{The value of the standard deviation parameter.}
 \item{Estimate}{The value of the causal estimate.}
 \item{CIRange}{The range of values in the confidence interval based on a grid search between the minimum and maximum values for the causal effect provided.}
 \item{CILower}{The lower limit of the confidence interval. If the confidence interval contains multiple ranges, then lower limits of all ranges will be reported.}
 \item{CIUpper}{The upper limit of the confidence interval. If the confidence interval contains multiple ranges, then upper limits of all ranges will be reported.}
 \item{CIMin}{The smallest value used in the search to find the confidence interval.}
 \item{CIMax}{The largest value used in the search to find the confidence interval.}
 \item{CIStep}{The step size used in the search to find the confidence interval.}
 \item{Pvalue}{The p-value associated with the estimate calculated using the likelihood function and a chi-squared distribution.}
 \item{Valid}{The numbers of genetic variants that were considered valid instruments at the causal estimate.}
 \item{ValidSNPs}{The names of genetic variants that were considered valid instruments at the causal estimate.}
 \item{Alpha}{The significance level used when calculating the confidence intervals.}
 \item{SNPs}{The number of genetic variants (SNPs) included in the analysis.}
}
\description{
Contamination mixture method for robust and efficient estimation under the 'plurality valid' assumption.
}
\details{
The contamination mixture method is implemented by constructing a likelihood function based on the variant-specific causal estimates. If a genetic variant is a valid instrument, then its causal estimate will be normally distributed about the true value of the causal effect. If a genetic variant is not a valid instrument, then its causal estimate will be normally distributed about some other value. We assume that the values estimated by invalid instruments are normally distributed about zero with a large standard deviation. This enables a likelihood function to be specified that is a product of two-component mixture distributions, with one mixture distribution for each variant. The computational time for maximizing this likelihood directly is exponential in the number of genetic variants. We use a profile likelihood approach to reduce the computational complexity to be linear in the number of variants.

We consider different values of the causal effect in turn. For each value, we calculate the contribution to the likelihood for each genetic variant as a valid instrument and as an invalid instrument. If the contribution to the likelihood as a valid instrument is greater, then we take the variant's contribution as a valid instrument; if less, then its contribution is taken as an invalid instrument. This gives us the configuration of valid and invalid instruments that maximizes the likelihood for the given value of the causal effect. This is a profile likelihood, a one-dimensional function of the causal effect. The point estimate is then taken as the value of the causal effect that maximizes the profile likelihood.

Confidence intervals are evaluated by calculating the log-likelihood function, and finding all points within a given vertical distance of the maximum of the log-likelihood function (which is the causal estimate). As such, if the log-likelihood function is multimodal, then the confidence interval may include multiple disjoint ranges. This may indicate the presence of multiple causal mechanisms by which the exposure may influence the outcome with different magnitudes of causal effect. As the confidence interval is determined by a grid search, care must be taken when chosing the minimum (\code{CIMin}) and maximum (\code{CIMax}) values in the search, as well as the step size (\code{CIStep}). The default values will not be suitable for all applications.
}
\examples{
mr_conmix(mr_input(bx = ldlc, bxse = ldlcse, by = chdlodds,
   byse = chdloddsse), psi = 3, CIMin = -1, CIMax = 5, CIStep = 0.01)

}
\references{
Stephen Burgess, Christopher N Foley, Elias Allara, Joanna Howson. A robust and efficient method for Mendelian randomization with hundreds of genetic variants: unravelling mechanisms linking HDL-cholesterol and coronary heart disease. Nat Comms 2020. doi: 10.1038/s41467-019-14156-4.
}

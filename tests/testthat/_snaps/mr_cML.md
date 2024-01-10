# cML applied to standard object

    Code
      mr_cML(Input1, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    3.073 0.278  0.000 [2.528,3.617]
      ------------------------------------------------------------------

# set MA to FALSE

    Code
      mr_cML(Input1, num_pert = 5, MA = FALSE, DP = TRUE, n = 17723)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-BIC-DP 
      ------------------------------------------------------------------
           Method Estimate    SE Pvalue        95% CI
       cML-BIC-DP    3.115 0.282  0.000 [2.561,3.668]
      ------------------------------------------------------------------

# set DP to FALSE

    Code
      mr_cML(Input1, MA = TRUE, DP = FALSE, n = 17723)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC 
      ------------------------------------------------------------------
           Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC    2.895 0.321  0.000 [2.265,3.525]
      ------------------------------------------------------------------

# set K_vec

    Code
      mr_cML(Input1, K_vec = 0:5, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    3.075 0.275  0.000 [2.535,3.614]
      ------------------------------------------------------------------

# set random_start

    Code
      mr_cML(Input1, random_start = 0, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    3.073 0.278  0.000 [2.528,3.617]
      ------------------------------------------------------------------

# set random_start warnings

    Code
      mr_cML(Input1, random_start = 10, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723)
    Condition
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    2.707 0.273  0.000 [2.172,3.242]
      ------------------------------------------------------------------

# set random_start_pert warnings

    Code
      mr_cML(Input1, random_start_pert = 10, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723)
    Condition
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
      Warning in `cML_estimate_random()`:
      May not converge to minimums with some given start points and maximum number of iteration, lead to Fisher Information matrices not positive definite. Could try increasing number of iterations (maxit) or try different start points. Note: If multiple random start points are used, this warning does not likely affect result.
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    2.919 0.366  0.000 [2.202,3.635]
      ------------------------------------------------------------------

# changing maxit

    Code
      mr_cML(Input1, K_vec = 9, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723, maxit = 2000)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    2.263 0.979  0.021 [0.345,4.182]
      ------------------------------------------------------------------

# changing random_seed

    Code
      mr_cML(Input1, K_vec = 0:9, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723,
      random_seed = 2000)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    2.923 0.310  0.000 [2.314,3.531]
      ------------------------------------------------------------------

# changing n

    Code
      mr_cML(Input1, K_vec = 0:9, num_pert = 5, MA = TRUE, DP = TRUE, n = 2000)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue        95% CI
       cML-MA-BIC-DP    2.982 0.367  0.000 [2.262,3.702]
      ------------------------------------------------------------------

# changing alpha

    Code
      mr_cML(Input1, K_vec = 0:9, num_pert = 5, MA = TRUE, DP = TRUE, n = 17723,
      Alpha = 0.001)
    Output
      
      Constrained maximum likelihood method (MRcML) 
      Number of Variants:  28 
      Results for:  cML-MA-BIC-DP 
      ------------------------------------------------------------------
              Method Estimate    SE Pvalue      99.9% CI
       cML-MA-BIC-DP    3.073 0.278  0.000 [2.159,3.987]
      ------------------------------------------------------------------


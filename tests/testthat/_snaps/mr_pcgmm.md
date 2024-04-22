# pcgmm applied to standard object

    Code
      mr_pcgmm(Input1, nx = 17723, ny = 17723)
    Output
      
      Univariable principal components generalized method of moments (PC-GMM) method
      
      Number of principal components used : 9 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value F-stat
       PC-GMM    3.486     0.451 2.603, 4.369   0.000   61.3
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 9.414297 
      
      Heterogeneity test statistic = 7.9999

# pcgmm with r changed

    Code
      mr_pcgmm(Input1, nx = 17723, ny = 17723, r = 4)
    Output
      
      Univariable principal components generalized method of moments (PC-GMM) method
      
      Number of principal components used : 4 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value F-stat
       PC-GMM    2.490     0.460 1.590, 3.391   0.000   75.4
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -6.916574 
      
      Heterogeneity test statistic = 0.7974

# pcgmm with thres changed

    Code
      mr_pcgmm(Input1, nx = 17723, ny = 17723, thres = 0.85)
    Output
      
      Univariable principal components generalized method of moments (PC-GMM) method
      
      Number of principal components used : 3 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value F-stat
       PC-GMM    2.469     0.471 1.546, 3.393   0.000   95.1
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -6.247456 
      
      Heterogeneity test statistic = 0.7572

# pcgmm with robust off

    Code
      mr_pcgmm(Input1, nx = 17723, ny = 17723, robust = FALSE)
    Output
      
      Univariable principal components generalized method of moments (PC-GMM) method
      
      Number of principal components used : 9 
      
      Non-robust model with no overdispersion heterogeneity.
      
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value F-stat
       PC-GMM    3.481     0.368 2.761, 4.201   0.000   61.3
      ------------------------------------------------------------------
      
      Heterogeneity test statistic = 13.5438 on 8 degrees of freedom, (p-value = 0.0945)

# pcgmm with alpha changed

    Code
      mr_pcgmm(Input1, nx = 17723, ny = 17723, alpha = 0.001)
    Output
      
      Univariable principal components generalized method of moments (PC-GMM) method
      
      Number of principal components used : 9 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
       Method Estimate Std Error 99.9% CI       p-value F-stat
       PC-GMM    3.486     0.451   2.003, 4.969   0.000   61.3
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 9.414297 
      
      Heterogeneity test statistic = 7.9999


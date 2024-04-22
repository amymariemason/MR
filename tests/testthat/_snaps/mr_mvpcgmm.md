# mvpcgmm applied to standard object

    Code
      mr_mvpcgmm(Input1, nx = rep(17723, 3), ny = 17723)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 20 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    1.662     0.689  0.312, 3.012   0.016        19.6
       exposure_2   -1.712     0.998 -3.667, 0.244   0.086         8.6
       exposure_3    0.419     0.352 -0.272, 1.109   0.234        10.5
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 38.5163 
      
      Heterogeneity test statistic = 15.6455

# mvpcgmm applied to correlated object

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 13 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI        p-value Cond F-stat
       exposure_1    1.395     0.569  0.280,  2.509   0.014        16.6
       exposure_2   -2.157     0.836 -3.796, -0.518   0.010         8.1
       exposure_3    0.473     0.247 -0.011,  0.956   0.055        11.4
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -0.1651 
      
      Heterogeneity test statistic = 9.8416

# mvpcgmm applied with correlation matrix on exposures

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, cor.x = corr_ex)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Number of principal components used : 13 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI        p-value Cond F-stat
       exposure_1    1.420     0.599  0.245,  2.595   0.018        26.5
       exposure_2   -2.195     0.878 -3.916, -0.474   0.012        17.0
       exposure_3    0.460     0.260 -0.049,  0.969   0.077        59.4
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -1.2800 
      
      Heterogeneity test statistic = 8.8763

# mvpcgmm with r changed

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, r = 4)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 4 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    2.355     1.074  0.250, 4.460   0.028        26.9
       exposure_2   -0.588     3.601 -7.645, 6.469   0.870         2.2
       exposure_3    1.080     0.977 -0.835, 2.995   0.269         2.4
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -16.2214 
      
      Heterogeneity test statistic = 0.0186

# mvpcgmm with thres changed

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, thres = 0.85)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 5 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    2.031     1.012  0.048, 4.015   0.045        14.4
       exposure_2    0.104     3.493 -6.743, 6.951   0.976         1.6
       exposure_3    1.238     0.939 -0.602, 3.078   0.187         1.6
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -4.6058 
      
      Heterogeneity test statistic = 0.9610

# mvpcgmm with robust off

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, robust = FALSE)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 13 
      
      Non-robust model with no overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI        p-value Cond F-stat
       exposure_1    1.395     0.569  0.280,  2.509   0.014        16.6
       exposure_2   -2.157     0.836 -3.796, -0.518   0.010         8.1
       exposure_3    0.473     0.247 -0.011,  0.956   0.055        11.4
      ------------------------------------------------------------------
      
      Heterogeneity test statistic = 9.8416 on 10 degrees of freedom, (p-value = 0.4545)

# mvpcgmm with alpha changed

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, alpha = 0.001)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 13 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error 99.9% CI       p-value Cond F-stat
       exposure_1    1.395     0.569  -0.477, 3.266   0.014        16.6
       exposure_2   -2.157     0.836  -4.908, 0.594   0.010         8.1
       exposure_3    0.473     0.247  -0.339, 1.284   0.055        11.4
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -0.1651 
      
      Heterogeneity test statistic = 9.8416


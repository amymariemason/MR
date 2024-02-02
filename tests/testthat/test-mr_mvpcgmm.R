# tests of the mr_mvpcgmm  - the Principal component generalized method of moments   method for
# multivariable MR


# create MRInput object
Input1<-mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                   bxse = cbind(ldlcse, hdlcse, trigse),
                   by = chdlodds, byse = chdloddsse,
                   correlation = diag(length(ldlc)))

library(randcorr)
set.seed(1234)
corr_test <- randcorr(28)
Input2<-mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                   bxse = cbind(ldlcse, hdlcse, trigse),
                   by = chdlodds, byse = chdloddsse,
                   correlation = corr_test)

test_that("Input objects are correct class", {
  expect_s4_class(Input1, "MRMVInput")
  expect_s4_class(Input2, "MRMVInput")
})

# test recommended input
test_that("mvpcgmm applied to standard object", {
  expect_snapshot(mr_mvpcgmm(Input1,
                           nx=rep(17723,3),
                           ny=17723))
})

test_that("mvpcgmm applied to correlated object", {
  expect_snapshot(mr_mvpcgmm(Input2,
                             nx=rep(17723,3),
                             ny=17723))
})

corr_ex <- randcorr(3)
test_that("mvpcgmm applied with correlation matrix on exposures", {
  expect_snapshot(mr_mvpcgmm(Input2,
                             nx=rep(17723,3),
                             ny=17723,
                            cor.x=corr_ex ))
})

test_that("mvpcgmm with r changed", {
  expect_snapshot(mr_mvpcgmm(Input2,
                             nx=rep(17723,3),
                             ny=17723,
                            r=4 ))
})

test_that("mvpcgmm with thres changed", {
  expect_snapshot(mr_mvpcgmm(Input2,
                             nx=rep(17723,3),
                             ny=17723,
                             thres=0.85 ))
})

test_that("mvpcgmm with robust off", {
  expect_snapshot(mr_mvpcgmm(Input2,
                             nx=rep(17723,3),
                             ny=17723,
                             robust=FALSE ))
})

test_that("mvpcgmm with alpha changed", {
  expect_snapshot(mr_mvpcgmm(Input2,
                             nx=rep(17723,3),
                             ny=17723,
                             alpha = 0.001 ))
})


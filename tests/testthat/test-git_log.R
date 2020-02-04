test_that("system calls work", {
  expect_equal(system("apt-get update", intern  = T)[[1]], expected =  "Reading package lists...")
})

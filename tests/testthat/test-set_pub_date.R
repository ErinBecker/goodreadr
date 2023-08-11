test_that("set_pub_date() works", {
  x <- data.frame(o = c(NA, NA, 1933, 2010),
                  y = c(1901, 1500, 2010, NA))
  # if o is missing, replace with y
  expect_equal(set_pub_date(x$o, x$y),
               expected = c(1901, 1500, 1933, 2010))
  # if y is missing, replace with o
  expect_equal(set_pub_date(x$y, x$o),
               expected = c(1901, 1500, 2010, 2010))
})

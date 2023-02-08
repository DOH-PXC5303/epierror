test_that("selectquote: output works", {
  expect_type(selectquote(), "character")
  expect_length(selectquote(), 1)
  })

test_that("selectquote: author works", {
  expect_match(selectquote(), "\\-([A-Z]\\.){1,2} [A-Za-z]{3,}|Vishnu")
  expect_no_match(selectquote(author = F), "\\-([A-Z]\\.){1,2} [A-Za-z]{3,}|Vishnu")
  expect_type(selectquote(author = F), "character")
  expect_length(selectquote(author = F), 1)
  expect_warning(selectquote(author = 'F'))
  })

test_that("selectquote: book works", {
  expect_match(selectquote(), "(Epidemiologist Revised Ed.)", fixed = T)
  expect_no_match(selectquote(book = F), "(Epidemiologist Revised Ed.)", fixed = T)
  expect_type(selectquote(book = F), "character")
  expect_length(selectquote(book = F), 1)
  expect_warning(selectquote(book = 'F'))
  })

test_that("selectquote: qpunct works", {
  expect_match(selectquote(qpunct = "'"), "^\\'.+\\' \\-[A-Z]")
  expect_no_match(selectquote(), "^\\'.+\\' \\-[A-Z]")
  expect_type(selectquote(qpunct = "'"), "character")
  expect_length(selectquote(qpunct = "'"), 1)
  expect_no_warning(selectquote(qpunct = T))
  })

test_that("selectquote: nline works", {
  expect_match(selectquote(nline = T), "\n-", fixed = T)
  expect_no_match(selectquote(), "\n-", fixed = T)
  expect_type(selectquote(nline = T), "character")
  expect_length(selectquote(nline = T), 1)
  expect_warning(selectquote(nline = 'F'))
  })

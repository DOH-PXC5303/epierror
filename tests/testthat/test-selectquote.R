# selectquote() ---------------------------------------------

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



# selectquote.html() ---------------------------------------------

test_that("selectquote.html: output works", {
  expect_type(selectquote.html(), "character")
  expect_length(selectquote.html(), 1)
})

test_that("selectquote.html: author works", {
  expect_match(selectquote.html(), "\\-([A-Z]\\.){1,2} [A-Za-z]{3,}|Vishnu")
  expect_no_match(selectquote.html(author = F), "\\-([A-Z]\\.){1,2} [A-Za-z]{3,}|Vishnu")
  expect_type(selectquote.html(author = F), "character")
  expect_length(selectquote.html(author = F), 1)
  expect_warning(selectquote.html(author = 'F'))
})

test_that("selectquote.html: book works", {
  expect_match(selectquote.html(), "(Epidemiologist Revised Ed.)", fixed = T)
  expect_no_match(selectquote.html(book = F), "(Epidemiologist Revised Ed.)", fixed = T)
  expect_type(selectquote.html(book = F), "character")
  expect_length(selectquote.html(book = F), 1)
  expect_warning(selectquote.html(book = 'F'))
})

test_that("selectquote.html: qpunct works", {
  expect_match(selectquote.html(qpunct = "'"), "^\\'.+\\' \\-[A-Z]")
  expect_no_match(selectquote.html(), "^\\'.+\\' \\-[A-Z]")
  expect_type(selectquote.html(qpunct = "'"), "character")
  expect_length(selectquote.html(qpunct = "'"), 1)
  expect_no_warning(selectquote.html(qpunct = T))
})

test_that("selectquote.html: nline works", {
  expect_match(selectquote.html(nline = T), "<br />-", fixed = T)
  expect_no_match(selectquote.html(), "<br />-", fixed = T)
  expect_type(selectquote.html(nline = T), "character")
  expect_length(selectquote.html(nline = T), 1)
  expect_warning(selectquote.html(nline = 'F'))
})

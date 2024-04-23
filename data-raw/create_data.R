## code to prepare `DATASET` dataset goes here
test <- list()

test$title <- "Test Your Personality6"
test$statements <- trimws(readLines("data-raw/statements.md"))

test$scale <- data.frame(
  label = c(
    "Very Inaccurateb",
    "Moderately Inaccurate",
    "Neither Accurate Nor Inaccurate",
    "Moderately Accurate",
    "Very Accurate"
  ),
  value = 1:5
)
usethis::use_data(test, overwrite = TRUE)

context("Testing svm estimators")

test_that("svm_classification() runs successfully", {

  mtcars$vs <- as.numeric(mtcars$vs) - 1

  recipe <-
    simple_svm_recipe(
      mtcars,
      response = "vs",
      features = c("cyl", "drat")
    )

  # clf <-
  #   svm_classifier(
  #     recipe = recipe
  #   ) %>% fit()

  # coefs <- coef(clf)
  # 
  # expect_warning(predictions <- predict(clf))
})
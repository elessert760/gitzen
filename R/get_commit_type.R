
#' get commit type from user
#'
#'
#' @return a character vector
#' @export
#' @importFrom utils select.list
#'
#'
#' @examples
#' get_commit_type()

get_commit_type <- function() {
  if(interactive()){
  cat("Choose a commit type:")
  out <- utils::select.list(sort(c("Feature", "Bug-Fix", "Enhancement", "Documentation", "Issue")))

  out

  }
}

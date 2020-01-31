
#' get commit type from user
#'
#'
#' @return a character vector
#' @export
#' @importFrom utils menu
#'
#'
#' @examples
#' get_commit_type()

get_commit_type <- function() {
  if(interactive()){
  cat("Choose a commit type:")
  out <- utils::menu(c("feature", "fix", "bug", "refactor", "docs"))
  out
  }
}

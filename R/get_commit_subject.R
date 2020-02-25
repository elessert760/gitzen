#' get a commit subject
#'
#' @return a character vector
#' @export
#' @importFrom crayon bold
#' @examples
#' get_commit_subject()

get_commit_subject <- function() {
  if (interactive()) {

    x <- paste0("\nWhat is the subject of this commit? \n",
      crayon::bold("This should be a one line description of what this changes \n "))

    cat(x)
    commit_subject <- readline()
    if (is.na(commit_subject) || commit_subject == "" || commit_subject == "[[:space:]]+") {
      commit_subject <- "no commit subject provided"
    }
    commit_subject
  }

}


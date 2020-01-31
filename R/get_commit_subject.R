#' get a commit subject
#'
#' @return
#' @export
#'
#' @examples
#' get_commit_subject()
#'
get_commit_subject <- function() {
  commit_subject <- readline("\nWhat is the subject of this commit? \n
                             This should be a one line description of what this commit is about \n ")
  if(is.na(commit_subject) || commit_subject == "" || commit_subject == "[[:space:]]+"){
    commit_subject <- "no commit subject provided"
  }
  commit_subject
}

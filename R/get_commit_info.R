
#' get commit type from user
#'
#'
#' @return a character vector
#' @export
#'
#' @examples
#' get_commit_type()
get_commit_type <- function() {

  commit_type <- readline("What type of commit is this? one of: (feature | bugfix | refactor | docs | chore) ")

  if(commit_type %in% c("feature", "bugfix", "refactor", "docs", "chore")){
    commit_type
  } else{
    stop("commit type must be one of: (feature | bugfix | refactor | docs | chore) ")
  }
  }

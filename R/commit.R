commit <- function() {
  changes <- system("git diff --stat", intern = T)
  type = get_commit_type()
  subject = get_commit_subject()

  message <- paste("Type:", type,
                   "- Subject:", subject,
                   "- Changes:", paste(changes, collapse = " "))
  cat(paste(
    "The commit message will be: \n\n",
    message,
    " \n\nDo you wish to commit?"
  ))

  confirm <- utils::select.list(c("Yes", "No"))

  if (confirm == "Yes") {
    git2r::commit(message = message)
  } else{
    print("OK, aborting this commit")
  }

}

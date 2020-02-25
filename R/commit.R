commit <- function() {
  type = get_commit_type()
  subject = get_commit_subject()

  print(paste("Type:", type,
              "- Subject:", subject,
              "- Time:", Sys.time()
              )
        )

}

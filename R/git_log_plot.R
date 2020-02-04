#' git_log_plot
#'
#' @param git_log_df output of git_log() function
#'
#' @return ggplot2
#' @export
#'
#' @examples
#' git_log() %>% git_log_plot()

git_log_plot <- function(git_log_df){
  git_log_df %>%
    dplyr::mutate(time_24_hrs = substr(time, 1,2)) %>%
    dplyr::mutate(weekday = forcats::as_factor(weekday)) %>%
    dplyr::group_by(commiter, weekday, time_24_hrs, year) %>%
    dplyr::tally() %>%
    dplyr::rename(commit_tally = n) %>%
    ggplot2::ggplot(ggplot2::aes(x = time_24_hrs, y = weekday)) +
    ggplot2::geom_point(ggplot2::aes(size = commit_tally)) +
    ggplot2::facet_grid(commiter ~ .)+
    ggplot2::theme_minimal() +
    ggplot2::theme(legend.position = "none")
}


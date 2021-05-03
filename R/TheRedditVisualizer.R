#' The Reddit Visualizer

#'

#' Collects and Visualizes Reddit data by search term

#'

#' Details

#'

#' @author Robert Garcia

#'

#' @param x Search Term.

#' @param y Number of pages Reddit will search

#'

#' @return A plot of Reddit comments sorted by Subreddit, with the X and Y axis
#' representing Post score and comment score respectively

#'

#' @examples

#' TheRedditVisualizer("Lebron James", 5)

#'

#' @export
#'

#Dependencies
library(tidyverse)

TheRedditVisualizer = function(x = Baseball, y = 1){
  RedditSearch = RedditExtractoR::get_reddit(search_terms = x ,page_threshold = y  )
  UsefulData = dplyr::select(RedditSearch,subreddit,controversiality,post_score,
                             comment_score,num_comments)
  CHART = ggplot2::ggplot(UsefulData, aes(x = comment_score, y = post_score, color = subreddit)) +
    geom_point()

  return(list(CHART))

}

TheRedditVisualizer("Dogecoin", 5)

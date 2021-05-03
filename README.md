TheRedditVisualizer
================
Robert Justin Garcia
2021-05-03

A package extending the capability of
[RedditExtractoR](https://github.com/cran/RedditExtractoR) by
visualizing data by an entered keyword from user. This README is derived
from Matt Kearney’s excellent
[rtweet]((https://github.com/mkearney/rtweet)) documentation.

## Install

Install from GitHub with the following code:

``` r
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("robertjustin/TheRedditVisualizer")
```

This package requires the following packages [<code> RedditExtractoR
</code>](https://github.com/cran/RedditExtractoR) , [<code> ggplot2
</code>](https://github.com/tidyverse/ggplot2),

This package connects to <code>RedditExtractoR<code> directly to help
pull data from Reddit itself and help visualize it to see where data is
concentrated on Reddit, and how those numbers compare across subreddits.

## Usage

There is one main funtion in the RedditVisualizer, and that is to
visualize Reddit Data from RedditExtractoR based on a search term. This
visualizes the top subreddits the search term appears in,

``` r
## load TheRedditVisualizer
library(TheRedditVisualizer)

## Enter query surrounded by quotation marks
TheRedditVisualizer("Bitcoin",1)
#> [1] Prints plot of Reddit posts containing keyword, X and Y axis are post_score
#and comment_score respectively


## If desired, change number of pages Reddit will search to increase data set
TheRedditVisualizer("Bitcoin", 7)
#> [1] Prints plot of Reddit posts containing keyword, X and Y axis are post_score
#and comment_score respectively
```

This function will be very helpful to those trying to quickly visualize
Reddit Data and see exactly where on Reddit the entered term is
trending, how its post score compares across subreddits, and really see
where certain information is concentrated across the reddit platform.
This started with me wanting to quickly see which stock tickers were
being talked about and where (subreddit) were they being talked about

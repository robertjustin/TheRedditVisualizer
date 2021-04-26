TheRedditVisualizer
================
Robert Justin Garcia
2021-04-26

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
RedditVisualizer("Bitcoin")
#> [1] Prints Visualization or Chart of top posts containing search words across
# top subreddits



## If desired, change sorting paramete from default comments to newest comments
botscan("Bitcoin", sort_by = "new")
#> [1] Prints Visualization or Chart of top posts containing search words across
# top subreddits, sorted by newest comments first

## Alternatively, adjust the comment threshold, excluding posts with fewer
## comments than specified
botscan("Bitcoin", sort_by = "new", cn_threshold = 10)
#> [1] Prints Visualization or Chart of top posts containing search words across
# top subreddits, sorted with newest comments first, with each post having a 
#minimum of 10 comments
```

This function will be very helpful to those trying to quickly visualize
Reddit Data and see exactly where on Reddit the entered term is
trending, how its post score compares across subreddits, and really see
where certain information is concentrated across the reddit platform

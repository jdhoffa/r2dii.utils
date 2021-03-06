% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unclean_column_names.R
\name{unclean_column_names}
\alias{unclean_column_names}
\title{Revert the effect of \code{clean_column_names()}}
\usage{
unclean_column_names(data, unclean)
}
\arguments{
\item{data}{A data frame}

\item{unclean}{A data frame, commonly a version of \code{data} before running
\code{janitor::clean_names(data)}.}
}
\description{
Revert the effect of \code{clean_column_names()}
}
\examples{
library(dplyr)

dirty <- tibble(x.x = 1, y = 1)
names(dirty)

clean <- janitor::clean_names(dirty)
names(clean)

names(unclean_column_names(clean, dirty))

# Cases where data doesn't change because no name matches unclean names
# exactly -- after applying janitor::clean_names()

unclean <- tibble(y = 1)
data <- tibble(y.y = 1)
data \%>\% unclean_column_names(unclean)

unclean <- tibble(y.y = 1)
data <- tibble(y = 1)
data \%>\% unclean_column_names(unclean)
}
\seealso{
\code{\link[janitor:clean_names]{janitor::clean_names()}}, \code{\link[=clean_column_names]{clean_column_names()}}.

Other functions to deal with unclean names: 
\code{\link{clean_column_names}()},
\code{\link{clean_quo}()},
\code{\link{quo_chr}()}
}
\concept{functions to deal with unclean names}

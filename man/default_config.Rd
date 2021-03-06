% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_config.R
\name{default_config}
\alias{default_config}
\alias{example_config}
\alias{get_config}
\title{Create a path pointing to a configuration file}
\usage{
default_config()

example_config(path = NULL)

get_config()
}
\arguments{
\item{path}{Character string giving the name of an available file. See
available files with \code{example_config()}.}
}
\value{
Character string.
}
\description{
\itemize{
\item \code{default_config()} returns a the path to the default configuration file
that comes with this package.
\item \code{get_config()} returns a the path to the default configuration file unless
you set a new path via \code{options(r2dii_config = "a/path/to/your/config.yml")}.
\item \verb{example_config(<path>)} returns a path to a configuration file for
examples and tests; \code{example_config()} returns a character string with
available configuration files for examples.
}
}
\examples{
default_config()

example_config()
example_config("config-toy.yml")
getOption("r2dii_config")
get_config()

restore <- options(r2dii_config = "path/to/your/config.yml")

getOption("r2dii_config")
get_config()

options(restore)
getOption("r2dii_config")
get_config()
}
\seealso{
\link{FINANCIAL.TIMESTAMP}

Other functions to deal with configuration files: 
\code{\link{create_config}()},
\code{\link{edit_config}()},
\code{\link{show_config}()}
}
\concept{functions to deal with configuration files}

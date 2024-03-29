% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as_data_frame.R
\name{as.data.frame.gt_tbl}
\alias{as.data.frame.gt_tbl}
\title{Transform a \strong{gt} object to a data frame}
\usage{
\method{as.data.frame}{gt_tbl}(x, ...)
}
\arguments{
\item{x}{\emph{The gt table data object}

\verb{obj:<gt_tbl>} // \strong{required}

This is the \strong{gt} table object that is commonly created through use of the
\code{\link[=gt]{gt()}} function.}

\item{...}{\emph{Optional parameters}

\verb{<multiple expressions>} // (\code{optional})

Anything provided here in \code{...} will be passed to internal function calls
that can consume it.}
}
\description{
This facilitates conversion of the \code{gt_tbl} object to a data frame.
}
\keyword{internal}

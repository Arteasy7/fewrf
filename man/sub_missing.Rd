% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/substitution.R
\name{sub_missing}
\alias{sub_missing}
\title{Substitute missing values in the table body}
\usage{
sub_missing(
  data,
  columns = everything(),
  rows = everything(),
  missing_text = "---"
)
}
\arguments{
\item{data}{A table object that is created using the \code{\link[=gt]{gt()}} function.}

\item{columns}{The columns to format. Can either be a series of column names
provided in \code{\link[=c]{c()}}, a vector of column indices, or a helper function
focused on selections. The select helper functions are: \code{\link[=starts_with]{starts_with()}},
\code{\link[=ends_with]{ends_with()}}, \code{\link[=contains]{contains()}}, \code{\link[=matches]{matches()}}, \code{\link[=one_of]{one_of()}}, \code{\link[=num_range]{num_range()}}, and
\code{\link[=everything]{everything()}}.}

\item{rows}{Optional rows to format. Providing \code{\link[=everything]{everything()}} (the
default) results in all rows in \code{columns} being formatted. Alternatively,
we can supply a vector of row captions within \code{\link[=c]{c()}}, a vector of row
indices, or a helper function focused on selections. The select helper
functions are: \code{\link[=starts_with]{starts_with()}}, \code{\link[=ends_with]{ends_with()}}, \code{\link[=contains]{contains()}}, \code{\link[=matches]{matches()}},
\code{\link[=one_of]{one_of()}}, \code{\link[=num_range]{num_range()}}, and \code{\link[=everything]{everything()}}. We can also use expressions
to filter down to the rows we need (e.g.,
\verb{[colname_1] > 100 & [colname_2] < 50}).}

\item{missing_text}{The text to be used in place of \code{NA} values in the
rendered table.}
}
\value{
An object of class \code{gt_tbl}.
}
\description{
Wherever there is missing data (i.e., \code{NA} values) customizable content may
present better than the standard \code{NA} text that would otherwise appear. The
\code{sub_missing()} function allows for this replacement through its
\code{missing_text} argument (where an em dash serves as the default).
}
\details{
Targeting of values is done through \code{columns} and additionally by \code{rows} (if
nothing is provided for \code{rows} then entire columns are selected). Conditional
formatting is possible by providing a conditional expression to the \code{rows}
argument. See the Arguments section for more information on this.
}
\section{Examples}{


Use \code{\link{exibble}} to create a \strong{gt} table. The \code{NA} values in different
columns will be given replacement text with two calls of \code{sub_missing()}.

\if{html}{\out{<div class="sourceCode r">}}\preformatted{exibble \%>\%
  dplyr::select(-row, -group) \%>\%
  gt() \%>\%
  sub_missing(
    columns = 1:2,
    missing_text = "missing"
  ) \%>\%
  sub_missing(
    columns = 4:7,
    missing_text = "nothing"
  )
}\if{html}{\out{</div>}}

\if{html}{\out{
<img src="https://raw.githubusercontent.com/rstudio/gt/master/images/man_sub_missing_1.png" style="width:100\%;">
}}
}

\section{Function ID}{

3-16
}

\seealso{
Other Format Data: 
\code{\link{data_color}()},
\code{\link{fmt_bytes}()},
\code{\link{fmt_currency}()},
\code{\link{fmt_datetime}()},
\code{\link{fmt_date}()},
\code{\link{fmt_engineering}()},
\code{\link{fmt_fraction}()},
\code{\link{fmt_integer}()},
\code{\link{fmt_markdown}()},
\code{\link{fmt_number}()},
\code{\link{fmt_partsper}()},
\code{\link{fmt_passthrough}()},
\code{\link{fmt_percent}()},
\code{\link{fmt_scientific}()},
\code{\link{fmt_time}()},
\code{\link{fmt}()},
\code{\link{sub_large_vals}()},
\code{\link{sub_small_vals}()},
\code{\link{sub_zero}()},
\code{\link{text_transform}()}
}
\concept{Format Data}
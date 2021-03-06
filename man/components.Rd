% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R
\name{components.mdl_df}
\alias{components.mdl_df}
\alias{components.mdl_ts}
\title{Extract components from a fitted model}
\usage{
\method{components}{mdl_df}(object, ...)

\method{components}{mdl_ts}(object, ...)
}
\arguments{
\item{object}{A mable.}

\item{...}{Other arguments passed to methods.}
}
\description{
Allows you to extract elements of interest from the model which can be
useful in understanding how they contribute towards the overall fitted values.
}
\details{
A dable will be returned, which will allow you to easily plot the components
and see the way in which components are combined to give forecasts.
}
\examples{
\dontrun{
if (requireNamespace("fable", quietly = TRUE)) {
library(fable)
library(tsibbledata)

# Forecasting with an ETS(M,Ad,A) model to Australian beer production
aus_production \%>\%
  model(ets = ETS(log(Beer) ~ error("M") + trend("Ad") + season("A"))) \%>\% 
  components() \%>\% 
  autoplot()
}
}

}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/session_run_hooks_builtin_wrappers.R
\name{session_run_hook}
\alias{session_run_hook}
\title{Create Session Run Hooks}
\usage{
session_run_hook(begin = function() { },
  after_create_session = function(session, coord) { },
  before_run = function(context) { }, after_run = function(context, values)
  { }, end = function(session) { })
}
\arguments{
\item{begin}{\code{function()}: An \R function, to be called once before using the session.}

\item{after_create_session}{\code{function(session, coord)}: An \R function, to be called
once the new TensorFlow session has been created.}

\item{before_run}{\code{function(run_context)}: An \R function to be called before a run.}

\item{after_run}{\code{function(run_context, run_values)}: An \R function to be called
after a run.}

\item{end}{\code{function(session)}: An \R function to be called at the end of the session.

Typically, you'll want to define a \code{before_run()} hook that defines the set
of tensors you're interested in for a particular run, and then you'll use the
resulting values of those tensors in your \code{after_run()} hook. The tensors
requested in your \code{before_run()} hook will be made available as part of the
second argument in the \code{after_run()} hook (the \code{values} argument).}
}
\description{
Create a set of session run hooks, used to record information during
training of an estimator. See \strong{Details} for more information on the
various hooks that can be defined.
}
\seealso{
\code{\link[=session_run_args]{session_run_args()}}
}

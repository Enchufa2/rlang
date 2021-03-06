% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3.R
\name{inherits_any}
\alias{inherits_any}
\alias{inherits_all}
\alias{inherits_only}
\title{Does an object inherit from a set of classes?}
\usage{
inherits_any(x, class)

inherits_all(x, class)

inherits_only(x, class)
}
\arguments{
\item{x}{An object to test for inheritance.}

\item{class}{A character vector of classes.}
}
\description{
\itemize{
\item \code{inherits_any()} is like \code{\link[base:inherits]{base::inherits()}} but is more explicit
about its behaviour with multiple classes. If \code{classes} contains
several elements and the object inherits from at least one of
them, \code{inherits_any()} returns \code{TRUE}.
\item \code{inherits_all()} tests that an object inherits from all of the
classes in the supplied order. This is usually the best way to
test for inheritance of multiple classes.
\item \code{inherits_only()} tests that the class vectors are identical. It
is a shortcut for \code{identical(class(x), class)}.
}
}
\examples{
obj <- structure(list(), class = c("foo", "bar", "baz"))

# With the _any variant only one class must match:
inherits_any(obj, c("foobar", "bazbaz"))
inherits_any(obj, c("foo", "bazbaz"))

# With the _all variant all classes must match:
inherits_all(obj, c("foo", "bazbaz"))
inherits_all(obj, c("foo", "baz"))

# The order of classes must match as well:
inherits_all(obj, c("baz", "foo"))

# inherits_only() checks that the class vectors are identical:
inherits_only(obj, c("foo", "baz"))
inherits_only(obj, c("foo", "bar", "baz"))
}

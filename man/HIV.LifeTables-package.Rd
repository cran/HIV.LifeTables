\name{HIV.LifeTables-package}
\alias{HIV.LifeTables-package}
\alias{HIV.LifeTables}
\docType{package}
\title{
HIV calibrated model life tables for countries with generalized HIV epidemics}
\description{The functions in this package produce a complete set of mortality rates as a function of a combination of HIV prevalence and either life expectancy at birth (e0), child mortality alone (5q0), or child mortality with adult mortality (45q15)}
\details{
\tabular{ll}{
Package: \tab HIV.LifeTables\cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2013-12-02\cr
License: \tab Unlimited\cr
}
The central function is \code{\link{hiv.mortmod}} which takes prevalence and some mortality indicator (e0, 5q0 alone, or 5q0 with 45q15) to produce set of mortality rates. The user also needs to select a region (Africa or Caribbean) and sex. \code{\link{hiv.mortmod}} will also produce a life table based on the estimated mortality rates. \code{\link{mortmod.e0}}, \code{\link{mortmod.5q0}}, and \code{\link{mortmod.45q15}} produce mortality rates for the various input combinations.
}
\author{
David J Sharrow \cr
Maintainer: Dave Sharrow <dsharrow@uw.edu>
}
\references{
Sharrow, David J., Samuel J. Clark, Adrian E. Raftery. 2013 \dQuote{Modeling Age-Specific Mortality for Countries with a Generalized HIV Epidemic} http://www.iussp.org/en/event/17/programme/paper/3284
}

\keyword{ package }
%\seealso{

%}
\examples{
## produces a life table and mortality rates at 1.5\% prevalence, 
## life expectancy of 60, for Africa Females 
hiv.mortmod(prev=1.5, e0=60, model=1, region=1, sex=1, lt=TRUE)
}

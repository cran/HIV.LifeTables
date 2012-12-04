\name{mortmod.e0}
\alias{mortmod.e0}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Age-specific mortality rate model as a function of HIV prevalence and life expectancy at birth (e0)}
\description{
This function produces a complete set of mortality rates for ages 0, 1-4, 5-9, 10-14, ...,100+ given a region, sex, HIV prevalence and life expectancy at birth (e0)}
\usage{
mortmod.e0(e0, prev, region = 1, sex = 1, opt=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{e0}{Life exepctancy at birth}
  \item{prev}{HIV prevalence expressed as a percentage}
  \item{region}{An integer to indicate which regional model to use. 1 for Africa, 0 for Caribbean or Latin American}
  \item{sex}{An interger to indicate the sex of the desired life table. 1 for female, 0 for male}
  \item{opt}{opt=TRUE will use a value for the weight for the first SVD component that produces a set of age-specific mortality rates that produce a life expectancy at birth that matches the input life expectancy.}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{A set of mortality rates for ages 0, 1-4, 5-9, 10-14, ...,100+
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{David J Sharrow}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{hiv.mortmod}}
}
\examples{
mortmod.e0(e0=55, prev=2.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ models }
\keyword{ misc }% __ONLY ONE__ keyword per line
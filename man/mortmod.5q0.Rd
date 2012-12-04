\name{mortmod.5q0}
\alias{mortmod.5q0}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Age-specific mortality rate model as a function of HIV prevalence and child mortality (5q0)
}
\description{
This function produces a complete set of mortality rates for ages 0, 1-4, 5-9, 10-14, ...,100+ given a region, sex, HIV prevalence and child mortality alone (5q0)}
\usage{
mortmod.5q0(child.mort, prev, region = 1, sex = 1, opt=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{child.mort}{Probability of death between age 0 and 5, 5q0}
  \item{prev}{HIV prevalence expressed as a percentage}
  \item{region}{An integer to indicate which regional model to use. 1 for Africa, 0 for Caribbean or Latin American}
  \item{sex}{An interger to indicate the sex of the desired life table. 1 for female, 0 for male}
   \item{opt}{If opt=TRUE, the model adjusts the first two (childhood) mortality rates (1q0, 4q1) in a proportional way so as to match the input 5q0.}
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
mortmod.5q0(child.mort=0.06, prev=2.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ models }
\keyword{ misc }% __ONLY ONE__ keyword per line

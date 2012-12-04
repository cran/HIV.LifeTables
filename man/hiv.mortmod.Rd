\name{hiv.mortmod}
\alias{hiv.mortmod}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
HIV calibrated model life tables for countries with generalized HIV epidemics
}
\description{
This function produces a complete set of mortality rates for ages 0, 1-4, 5-9, 10-14, ...,100+ and life table given a region, sex, and set of inputs which must include HIV prevalence and one of the following mortality indicators: life expectancy at birth (e0), child mortality alone (5q0), or child mortality with adult mortality (45q15) 
}
\usage{
hiv.mortmod(prev=NULL, e0=NULL, child.mort = NULL, adult.mort = NULL, model = 1, 
region = 1, sex = 1, lt = FALSE, nax=NULL, opt=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prev}{HIV prevalence expressed as a percentage
}
  \item{e0}{Life expectancy at birth (used only if model=1)
}
  \item{child.mort}{Probability of death between age 0 and 5, 5q0 (used only if model=2 or model=3)
}
  \item{adult.mort}{Probability of death between age 15 and 60, 45q15 (used only if model=3)
}
  \item{model}{An interger to indicate which inputs will be used on the model. 1 for life expectancy, 2 for child mortality alone, 3 for child mortality with adult mortality
}
  \item{region}{An integer to indicate which regional model to use. 1 for Africa, 0 for Caribbean or Latin American
}
  \item{sex}{An interger to indicate the sex of the desired life table. 1 for female, 0 for male
}
  \item{lt}{Logical. If TRUE a life table is calculated based on the estimated mortality rates. The user can supply nax values. Otherwise, the assumption of half the length of the age interval is used for nax values.
}
  \item{nax}{If lt=TRUE, the user can supply a set of nax values
}
  \item{opt}{If model=1, opt=TRUE will use a value for the weight for the first SVD component that produces a set of age-specific mortality rates that produce a life exepctancy at birth that matches the input life exepctancy. 
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
 \item{nmx}{The estimated nmx values produced by the model}
 \item{lt}{If \code{lt=TRUE} A life table with age intervals matching those of the nmx schedule on which the table is built and with columns for age, nax, nmx, nqx, npx, ndx, lx, nLx, Tx, and ex.}
 \item{lt.5q0}{If \code{lt=TRUE} The probability of death between birth and age 5}
 \item{lt.45q15}{If \code{lt=TRUE} The probability of death between age 15 and 60}

}
% \references{
% %% ~put references to the literature/web site here ~
% }
\author{
David J Sharrow
}
\note{
If \code{lt=TRUE}, it is possible that the life table contains fewer age groups than the 22 in the estimated mortality rates if the mortality rates are high enough to kill off all people before the final age group, 100+.  
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{mortmod.e0}}, \code{\link{mortmod.5q0}}, \code{\link{mortmod.45q15}}
}
\examples{
## a life table at 1.5 percent prevalence, life expectancy of 60, for Africa Females
hiv.mortmod(prev=1.5, e0=60, model=1, region=1, sex=1, lt=TRUE)

## a set of mortality rates at 2.5 percent prevalence, life expectancy of 53, 
## for Caribbean Males
hiv.mortmod(prev=2.5, e0=53, model=1, region=0, sex=0, lt=FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ models }
\keyword{ misc }% __ONLY ONE__ keyword per line

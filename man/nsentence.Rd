% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nfunctions.R
\name{nsentence}
\alias{nsentence}
\title{Count the number of sentences}
\usage{
nsentence(x)
}
\arguments{
\item{x}{a character or \link{corpus} whose sentences will be counted}
}
\value{
count(s) of the total sentences per text
}
\description{
Return the count of sentences in a corpus or character object.
}
\note{
\code{nsentence()} relies on the boundaries definitions in the \pkg{stringi}
package (see \link[stringi:stri_opts_brkiter]{stri_opts_brkiter}).  It does not
count sentences correctly if the text has been transformed to lower case,
and for this reason \code{nsentence()} will issue a warning if it detects all
lower-cased text.
}
\examples{
# simple example
txt <- c(text1 = "This is a sentence: second part of first sentence.",
         text2 = "A word. Repeated repeated.",
         text3 = "Mr. Jones has a PhD from the LSE.  Second sentence.")
nsentence(txt)
}

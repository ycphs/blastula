% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/block_articles.R
\name{block_articles}
\alias{block_articles}
\title{A block of one, two, or three articles with a multicolumn layout}
\usage{
block_articles(...)
}
\arguments{
\item{...}{One, two, or three calls to \code{article()}.}
}
\description{
With \code{block_articles()}, we can create a single- or multi-column layout of
articles. The articles are responsive to the screen width, so side-by-side
articles will collapse and any of the optional images will resize
accordingly. The function can accept one to three \code{article()} calls, each
with varying amounts of text and imagery. Like all \verb{block_*()} functions,
\code{block_articles()} must be placed inside of \code{blocks()} and the resultant
\code{blocks} object can be provided to the \code{body}, \code{header}, or \code{footer}
arguments of \code{compose_email()}.
}
\examples{
# Create a block of three, side-by-side
# articles with three `article()`
# calls inside of `block_articles()`,
# itself placed in `blocks()`
email <-
  compose_email(
    body =
      blocks(
        block_articles(
          article(
            image = "https://i.imgur.com/XMU8yJa.jpg",
            title = "Taiwan",
            content =
              "It is a thriving mosaic of tradition,
              culture, and high-tech development,
              merging Eastern and Western influences."
          ),
          article(
            image = "https://i.imgur.com/aYOm3Tk.jpg",
            title = "Japan",
            content =
              "Japan is an archipelago consisting
              of 6,852 islands along East Asia's
              Pacific Coast."
          ),
          article(
             image = "https://i.imgur.com/ekjFVOL.jpg",
             title = "Singapore",
             content =
               "Singapore is an island city-state
               in Southeast Asia. It's lies at the
               southern tip of the Malay Peninsula."
          )
        )
      )
    )

if (interactive()) email

}

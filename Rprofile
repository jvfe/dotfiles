## Change prompt
options(prompt = "R> ", digits = 4, show.signif.stars = FALSE)

## Set pdfviewer
options("pdfviewer" = "zathura")

## Create hidden environment
.env <- new.env()

## Define new q() function
.env$q <- function(save = "no", ...) {

  quit(save = save, ...)

}

## Attach hidden environment
attach(.env, warn.conflicts = FALSE)

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dlg_save.R
\name{dlg_save}
\alias{dlg_save}
\alias{dlgSave}
\alias{dlg_save.gui}
\alias{dlg_save.textCLI}
\alias{dlg_save.nativeGUI}
\title{Modal dialog to select a file to save to.}
\usage{
dlg_save(
  default = "untitled",
  title = "Save file as",
  filters = dlg_filters["All", ],
  ...,
  gui = .GUI
)

dlgSave(
  default = "untitled",
  title = "Save file as",
  filters = dlg_filters["All", ],
  ...,
  gui = .GUI
)

\method{dlg_save}{gui}(default, title, filters = dlg_filters["All", ], ..., gui = .GUI)

\method{dlg_save}{textCLI}(default, title, filters = dlg_filters["All", ], ..., gui = .GUI)

\method{dlg_save}{nativeGUI}(
  default,
  title,
  filters = dlg_filters["All", ],
  rstudio = getOption("svDialogs.rstudio", TRUE),
  ...,
  gui = .GUI
)
}
\arguments{
\item{default}{The default file to start with (use \verb{/dir/*} or \verb{/dir/*.*} to
start in a given directory, but without predefined name).}

\item{title}{A title to display on top of the dialog box.}

\item{filters}{A specification of file filters as a \code{nx2} matrix, or a
character string with even number of items. First items is the label, second
one is the filter. See \code{dlg_filters} for examples. This is currently ignored
on MacOS, since such kind of filter is defined differently there.}

\item{...}{Pass further arguments to methods.}

\item{gui}{The modified 'gui' object is returned invisibly. The chosen file,
or an empty string (if the "cancel" button was clicked or confirmation was
cancelled) is placed in \code{gui$res} (see example). For existing files,
confirmation is always asked!}

\item{rstudio}{Logical. Should 'RStudio' dialog boxes automatically be used
if available? If \code{FALSE}, force using OS dialog boxes, but only in
'RStudio Desktop' (ignored in 'RStudio Server'). Can be changed globally
with \code{options(svDialogs.rstudio = TRUE|FALSE)}. \code{TRUE} by default.}
}
\description{
Select an existing file, or create a new one to save data.
}
\note{
In case the file already exists, the user is prompted to confirm he
wants to overwrite the existing file. If he clicks \code{'Cancel'}, then the
return is an empty string. The 'RStudio' version of this dialog box currently
ignores the \verb{filters =} argument.
}
\examples{
\dontrun{
# Choose one R filename to save some R script into it
dlg_save(title = "Save R script to", filters = dlg_filters[c("R", "All"), ])$res
}
}
\seealso{
\code{\link[=dlg_open]{dlg_open()}}, \code{\link[=dlg_dir]{dlg_dir()}}
}
\concept{Modal dialog box}
\keyword{misc}

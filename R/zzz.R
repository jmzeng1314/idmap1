##' @importFrom utils packageDescription
.onAttach <- function(libname, pkgname) {
  pkgVersion <- packageDescription(pkgname, fields="Version")
  msg <- paste0(pkgname, " v ", pkgVersion, "  ",
                "welcome to use AnnoProbe !", "\n")

  citation <- paste0("If you use ", pkgname, " in published research, please cite:\n",
                     "AnnoProbe：An R package and shinyApp for annotating probe sequences\n",
                     "Bioinformatics, 2019, XXXXXXXX")

  packageStartupMessage(paste0(msg, citation))
}

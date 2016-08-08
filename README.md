# Common R Code

This repository contains a selection of R snippets which are not
currently part of an existing library (and are in general fairly
trivial)

# Components

1. `array_to_text.R` converts data.frames and data.tables into tab
   delimited files; suitable for using in scripts and Makefile rules
2. `simple_grange.R` generates very simple genetic ranges
3. `to_latex.R` converts tables to LaTeX; you probably want xtable
   instead of the code in this file.
4. `stat-poly-eq.R` is code from Pedro Aphalo to plot equations; you
   probably actually want the version in ggpmisc, not this code

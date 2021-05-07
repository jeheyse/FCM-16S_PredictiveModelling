### USER-DEFINED FUNCTION FOR PRINTING TAXONOMIC LABELS IN ITALICS IN PLOT LEGENDS ###
make.italic <- function(x) as.expression(lapply(x, function(y) bquote(italic(.(y)))))

### USER-DEFINED FUNCTION FOR SCALING OF AMPLICON DATA ###
# Source: https://github.com/michberr/MicrobeMiseq
scale_reads <- function(physeq, n = min(sample_sums(physeq)), round = "floor") {
  # transform counts to n
  physeq.scale <- transform_sample_counts(physeq, function(x) {(n * x/sum(x))})
  # Pick the rounding functions
  if (round == "floor"){
    otu_table(physeq.scale) <- floor(otu_table(physeq.scale))
  } else if (round == "round"){
    otu_table(physeq.scale) <- myround(otu_table(physeq.scale))
  }
  # Prune taxa and return new phyloseq object
  physeq.scale <- prune_taxa(taxa_sums(physeq.scale) > 0, physeq.scale)
  return(physeq.scale)
}

### USER-DEFINED FUNCTION TRACING NaN-VALUES IN DATAFRAMES ###
is.nan.data.frame <- function(x) do.call(cbind, lapply(x, is.nan))

### USER-DEFINED FUNCTION FOR FORMATTIN NUMBERS WITH 2 DECIMALS IN AXIS ###
scaleFUN <- function(x) sprintf("%.2f", x)

### USER-DEFINED FUNCTIONS FOR PLOTTING LOGSCALED AXIS WITH FLOWVIZ ###
logTicks <- function (lim, loc = c(1, 5)){
  ii <- floor(log10(range(lim))) + c(-1,2)
  main <- 10^(ii[1]:ii[2])
  r <- as.numeric(outer(loc, main, "*"))
  r[lim[1] <= r & r <= lim[2]]
}

xscale.components.log10 <- function (lim, ...) {
  ans <- xscale.components.default(lim = lim, ...)
  tick.at <- logTicks(10^lim, loc = 1:9)
  tick.at.major <- logTicks(10^lim, loc = 1)
  major <- tick.at %in% tick.at.major
  ans$bottom$ticks$at <- log(tick.at, 10)
  ans$bottom$ticks$tck <- ifelse(major, 1.5, 0.75)
  ans$bottom$labels$at <- log(tick.at, 10)
  ans$bottom$labels$labels <- as.character(tick.at)
  ans$bottom$labels$labels[!major] <- ""
  ans$bottom$labels$check.overlap <- FALSE
  ans
}

yscale.components.log10 <- function(lim, ...) {
  ans <- yscale.components.default(lim = lim, ...)     
  tick.at <- logTicks(10^lim, loc = 1)
  ans$left$ticks$at <- log(tick.at, 10)
  ans$left$labels$at <- log(tick.at, 10)
  ans$left$labels$labels <- as.character(tick.at)
  ans
} 

my.settings <- list(
  strip.background=list(col = "transparent"),
  strip.border=list(col = "transparent", cex = 5),
  gate = list(col = "black", fill = "transparent", alpha = 1, border = NA, lwd = 1.5),
  panel.background=list(col = ColorBlocksFacet),
  background=list(col = "white")) 
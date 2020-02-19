rothko_palettes <- list(
  "Magenta.Black.Green.on.Orange" = c("#3D341C", "#D46438", "#6B8D4A", "#A65530", "#E28255", "#FDF5AB", "#FDFCC5"),
  "Untitled.1949" = c("#3D341C", "#D46438", "#688D49", "#A65530", "#E28255", "#FDF5AB"),
  "Number.5" = c("#FBA901", "#F86602", "#F9C007", "#DD2B18", "#D9AA07"),
  "Violet.Black.Orange.Yellow.on.White.and.Red" = c("#B41840", "#F0C73C", "#C44045", "#EDD2A7", "#E48504", "#E79914", "#DFC36D", "#372412", "#F1DBC7", "#F7E4D7", "#DC9F4A"),
  "White.Center" = c("#DB7595", "#E79C33", "#E27B98", "#E38265", "#D57254", "#F3EBD3", "#8B624B", "#DB9247", "#EACAAD", "#EEDEC7", "#E8B294"),
  "Blue.Green.and.Brown" = c("#262F5B", "#3C529D", "#5B73C9", "#738BE0"),
  "Purple.White.and.Red" = c("#6F5256", "#917264", "#9B907B", "#878987", "#9A9994", "#87888A"),
  "Number.10" = c("#C9A203", "#9EC0A7", "#95B4A1", "#15529A", "#4E5F71", "#B29438", "#BE810D", "#C2C27F", "#7A9482", "#7DA09B"),
  "Rust.and.Blue" = c("#342445", "#3855AE", "#3C5BBD"),
  "Untitled.1953" = c("#2D313B", "#CC5177", "#AD6068", "#D15C8D", "#E15278"),
  "Ochre.and.Red.on.Red" = c("#D2901D", "#D15818", "#E43824", "#B56C18"),
  "Red.Black.White.on.Yellow" = c("#EE5633", "#D2CFCE", "#D56A3B", "#CF9A59", "#342B25", "#E49B57", "#CCC2B0"),
  "Green.and.Tangerine.on.Red" = c("#E74607", "#383A39", "#C49261", "#CE6636", "#B37347", "#BA8C5F"),
  "Light.Red.Over.Black" = c("#56372D", "#FB3D1E", "#A4422C", "#CF3C23"),
  "Light.Cloud.Dark.Cloud" = c("#C55E48", "#B53832", "#FAEEEA", "#CE917B", "#872828", "#F4E4DD"),
  "Number.14" = c("#F96311", "#201128", "#A33003", "#CE3803", "#000000"),
  "Orange.Red.Yellow" = c("#E7602E", "#D55D2D", "#A84838", "#842B2A"),
  "Number.16" = c("#12153D", "#1039A2", "#F7F3E8", "#D77508", "#6B84C4", "#E48107"),
  "Blue.and.Grey" = c("#313B48", "#9B9692", "#8D8B88", "#000000"),
  "Untitled.1969" = c("#3C3029", "#8D847D", "#D8CEC8", "#E7DDD5")
)

rothko_palette <- function(name, n, type=c("discrete", "continuous")) {
  type <- match.arg(type)
  pal <- rothko_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")
  
  if (missing(n)) {
    n <- length(pal)
  }
  
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors (", n, ")greater than what ", 
         "palette can offer (", length(pal), ")")
  }
  
  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  structure(out, class="palette", name=name)
}

print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))
  
  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  
  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")

  
"heatmap"
}

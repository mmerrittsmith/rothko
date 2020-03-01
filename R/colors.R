rothko_palettes <- list(
  "Magenta, Black, Green on Orange" = c("#3D341C", "#D46438", "#6B8D4A", "#A65530", "#FDF5AB"),
  "Untitled 1949" = c("#414030", "#9EA683", "#EAB23B", "#F3C855", "#DABF7B", "#F0D69A"),
  "Number 5" = c("#DD2B18", "#F86602", "#FBA901", "#F9C007"),
  "Violet, Black, Orange, Yellow on White and Red" = c("#B41840", "#C44045", "#F0C73C", "#F7E4D7", "#F1DBC7", "#DFC36D", "#DC9F4A", "#E79914", "#E48504", "#372412"),
  "Violet, Black, Orange, Yellow on White and Red2" = c("#B41840", "#F0C73C", "#F1DBC7", "#E48504", "#372412"),
  "White Center" = c("#E27B98", "#E79C33", "#F3EBD3", "#D57254", "#8B624B"),
  "Blue, Green, and Brown" = c("#231526", "#2A1D26", "#262F5B", "#3C529D", "#5B73C9", "#738BE0"),
  "Purple, White, and Red" = c("#6F5256", "#917264", "#9B907B", "#9A9994", "#878987"),
  "Number 10" = c("#4E5F71", "#7A9482",  "#9EC0A7", "#C2C27F", "#C9A203", "#BE810D"),
  "Rust and Blue" = c("#342445", "#3855AE", "#3C5BBD"),
  "Untitled 1953" = c("#2D313B", "#AD6068", "#CC5177", "#D15C8D"),
  "Ochre and Red on Red" = c("#D2901D", "#B56C18", "#D15818", "#E43824"),
  "Red, Black, White on Yellow" = c("#EE5633", "#342B25", "#D2CFCE", "#CF9A59"),
  "Green and Tangerine on Red" = c("#E74607", "#383A39", "#C49261", "#CE6636"),
  "Light Red Over Black" = c("#FB3D1E", "#CF3C23", "#A4422C", "#56372D"),
  "Light Cloud, Dark Cloud" = c("#FAEEEA", "#F4E4DD", "#CE917B", "#C55E48", "#B53832", "#872828"),
  "Number 14" = c("#F96311", "#CE3803",  "#A33003", "#201128", "#000000"),
  "Orange, Red, Yellow" = c("#E7602E", "#D55D2D", "#A84838", "#842B2A"),
  "Number 16" = c("#12153D", "#1039A2", "#6B84C4", "#F7F3E8", "#E48107", "#D77508"),
  "Blue and Grey" = c("#313B48", "#8D8B88", "#9B9692"),
  "Untitled 1969" = c( "#000000", "#3C3029", "#8D847D", "#D8CEC8", "#E7DDD5")
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

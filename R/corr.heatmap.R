#' @title Correlational heatmap of variables from a numerical dataset
#' 
#' @description
#' \code{corr.heatmap} creates a correlational heatmap of variables from a given numerical dataset. User specifies colors and title.
#'           
#' @param data = numerical dataset
#' @param color1 = hex color code("#xxxxxx") of negative correlation
#' @param color2 = hex color code("#xxxxxx") of positive correlation
#' @param title = "[title here]"
#' @return a correlational heatmap
#' 
#' 
#' @example
#' Using R's preloaded mtcars dataset:
#' corr.heatmap(mtcars, "#ffbaed", "#ffbaed", "mtcars Variables")
#'
corr.heatmap = function(data, color1, color2, title){
  round.data = round(cor(data), 2)
  re.data = reorder.cormat(round.data)
  melt.data = melt(re.data, na.rm = TRUE)
  heat.data = ggplot(melt.data, aes(Var1, Var2, fill = value)) +
    geom_tile(color = "white") +
    scale_fill_gradient2(low = color1, high = color2, mid = "white", midpoint = 0, limit = c(-1,1), space = "Lab", name = "Pearson\nCorrelation") +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 75, vjust = 1, size = 12, hjust = 1)) +
    ggtitle(title) +
  coord_fixed()
  heat.data + 
    geom_text(aes(Var2, Var1, label = value), color = "black", size = 2.5) +
    theme(
      axis.title.x = element_blank(),
      axis.title.y = element_blank(),
      panel.grid.major = element_blank(),
      panel.border = element_blank(),
      panel.background = element_blank(),
      axis.ticks = element_blank(),
      legend.direction = "horizontal") +
    guides(fill = guide_colorbar(barwidth = 7, barheight = 1, title.position = "top", title.hjust = 0.5))
}

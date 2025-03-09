# ---------------------------------------------------------------------------------------------------------
# Defining a general theme for ggplot graphing
# Adapted from code by Kaitlyn Tonra. Thanks KT!
# ---------------------------------------------------------------------------------------------------------

ktTheme <- theme (axis.title = element_text (size = 12), 
                  axis.text.x = element_text (size = 10, color = "black"),
                  axis.text.y = element_text (size = 10, color = "black"),
                  axis.ticks.y = element_line (color = "black", size = 0.8),
                  axis.ticks.x = element_blank(),
                  axis.line.y = element_line(color = "black"),
                  axis.line.x = element_line(color = "black"),
                  panel.background = element_blank (), 
                  panel.grid.major = element_blank (),
                  panel.grid.minor = element_blank (),
                  plot.background = element_blank (),
                  legend.key = element_rect(fill = "white"),
                  legend.title = element_text(size = 12),
                  legend.position = "right",
                  legend.text = element_text(size = 12),
                  legend.title.align = 0.5)
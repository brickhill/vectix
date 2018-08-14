#' Test file
#' 
#' Nob
#' 
#' @export
#' @param mydata some object or dataset
library(ggplot2)
x <- 1:100
y <- 1:100
ddata <- data.frame(x,y)


#using ggsave
ggplot(aes(x, y), data = ddata) +
  geom_point() +
  geom_smooth(method=lm, fill = NA, fullrange=TRUE, color = "black")
x = ggsave("nob.png")
list(
  msg = 'test',
  file = x
)
dev.off()
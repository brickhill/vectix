#' Test file
#' 
#' Nob
#' 
#' @export
#' @param mydata some object or dataset
#' 
nob <- function(myname = ""){
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
  msg = paste('test')
  #file = x
)
dev.off()
}
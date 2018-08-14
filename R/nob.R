#using ggsave
ggplot(aes(x, y), data = ddata) +
  geom_point() +
  geom_smooth(method=lm, fill = NA, fullrange=TRUE, color = "black")

ggsave("test.tiff", units="in", width=5, height=4, dpi=300, compression = 'lzw')

#using tiff() and dev.off
tiff('test.tiff', units="in", width=5, height=4, res=300, compression = 'lzw')

ggplot(aes(x, y), data = ddata) +
  geom_point() +
  geom_smooth(method=lm, fill = NA, fullrange=TRUE, color = "black")

dev.off()
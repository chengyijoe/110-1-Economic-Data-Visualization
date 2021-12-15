
df<-data.frame(x=c("屏東縣\n18.3%","臺南市\n15.1%","高雄市\n10.9%","嘉義縣\n10.5%","南投縣\n10.2%","其他\n43.2%"),
               y=c(0.183,0.151,0.109,0.105,0.102,0.432),
               level=c("1","1","1","1","1","1"))

ggplot(df, aes(x = level, y=y, fill = x, alpha = level)) +
  geom_col(width = 1, color = 'white', size = 0.25, position = position_stack()) +
  geom_text(aes(label = x), size = 5, position = position_stack(vjust = 0.55)) +
  coord_polar(theta = 'y') +
  scale_alpha_manual(values = c('0' = 0, '1' = 1, '2' = 0.7), guide = F) +
  scale_fill_manual(values = c("red","orange","yellow","green","blue","purple"),
                    names(NULL),
                    breaks = NULL
  )+
  scale_x_discrete(breaks = NULL) +
  scale_y_continuous(breaks = NULL) +
  
  labs(x = NULL, y = NULL,title = "１０９年台灣水果地區占比",size=45) +
  theme_minimal()
#原本想用MAP呈現

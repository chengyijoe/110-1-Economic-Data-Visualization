```{r}
library(readr)
library(tidyverse)
library(dplyr)
GDP <- read_csv("https://raw.githubusercontent.com/chengyijoe/110-1-Economic-Data-Visualization/main/A17030000J-000016-wWs%20(1).csv")
GDP$失業率->y
GDP$月別->x
breaksx=x
labelsx=c("2020-09","10","11","12","2021-01","02","03","04","05","06","07","08","09")


ggplot()+
  geom_col(
    mapping=aes(
      x=x,
      y=y,
      fill=x
    ),
    width=0.5
  )+
  geom_text(
    mappin=aes(
      x=x,y=y+0.4,label=y
    ),
    size=4,
    color="black"
  )+
  scale_x_discrete(
    breaks=breaksx,
    labels=labelsx,
    name="月別"
  )+
  labs(
    title="一年來失業率變化",
    caption="Source:https://data.gov.tw/")+
  scale_fill_manual(values=c("#f00000","#ff8103","#ffdd03","#a3ff03","#127001","#00f2b2","#0443b0","#8157de","#931bcf","#cf1bba","#cf1b87","#0d0105","#595355"),name="月份")+
  theme_light(
    base_family = "",
    base_line_size =0.4,
    base_rect_size =0.4
  )
```

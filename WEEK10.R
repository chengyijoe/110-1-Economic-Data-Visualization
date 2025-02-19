library(readr)
csse <- read_csv("C:/Users/Joe/Downloads/csse_covid_19_daily_reports_vaccine_city_can2_c2 (2).csv")
ggplot(data=csse)+
  geom_col(mapping=aes(x=疫苗廠牌,y=總共累計接種人次,fill=疫苗廠牌),width=0.8,position="dodge")+
  labs(title="十一月施打情形") +theme_void(
    base_line_size = base_size/28,
    base_rect_size = base_size/22
  )+coord_flip()

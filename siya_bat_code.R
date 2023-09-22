
####clear environment

rm(list = ls())



###setting 
setwd("E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review")

###installing relevant packages

install.packages("highcharter")
install.packages("htmlwidgets")
install.packages("dplyr")
install.packages("webshot")
install.packages("rmarkdown")
install.packages("knitr")


### loading packages

library(highcharter)
library(htmlwidgets)
library(dplyr)
library(webshot)
library(knitr)
library(rmarkdown)

webshot::install_phantomjs()

install.packages("tidyverse")
library(tidyverse)

###loading data
d<-read.csv("E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\siya_bats.csv")

##selecting columns for analysis

e<-select(d, continent, wellbeing_constituent, activity)

##running a sankey plot
head(e)
hchart(data_to_sankey(e), "sankey", name = "Values of bats across different regions",
       fontsize = 18, fontFamily = "sans-serif")



####saving the image 
p1<-hchart(data_to_sankey(e), "sankey", name = "Values of bats across different regions",
           fontsize = 18, fontFamily = "sans-serif")
p1

p1%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Global values of bats") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p1, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map1.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map1.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map1.png", delay = 20)



### Regional analysis

#AFRICA 

d %>%
  filter(continent =="Africa")

Africa<- d %>%
  filter(continent == "Africa")


#sankey diagram
##select columns 
e_africa<-select(Africa, region, wellbeing_constituent, activity)

##running a sankey plot
head(e_africa)
hchart(data_to_sankey(e_africa), "sankey", name = "Values of bats across Africa")



####saving the image 
p2<-hchart(data_to_sankey(e_africa), "sankey", name = "Values of bats across Africa")
p2

p2%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Values of bats in Africa") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p2, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map2.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map2.html", file = "EE:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map2.png", delay = 20)



#ASIA

d %>%
  filter(continent =="Asia")

Asia<- d %>%
  filter(continent == "Asia")


#sankey diagram
##select columns 
e_asia<-select(Asia, region, wellbeing_constituent, activity)

##running a sankey plot
head(e_asia)
hchart(data_to_sankey(e_asia), "sankey", name = "Values of bats across Asia")



####saving the image 
p3<-hchart(data_to_sankey(e_asia), "sankey", name = "Values of bats across Asia")
p3

p3%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Values of bats in Asia") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p3, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map3.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map3.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map3.png", delay = 20)


#AMERICA

d %>%
  filter(continent =="America")

America<- d %>%
  filter(continent == "America")


#sankey diagram
##select columns 
e_america<-select(America, region, wellbeing_constituent, activity)

##running a sankey plot
head(e_america)
hchart(data_to_sankey(e_america), "sankey", name = "Values of bats across America")



####saving the image 
p4<-hchart(data_to_sankey(e_america), "sankey", name = "Values of bats across America")
p4

p4%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Values of bats in America") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p4, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map4.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map4.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map4.png", delay = 20)


#AUSTRALIAN


d %>%
  filter(continent =="Australian")

Australian<- d %>%
  filter(continent == "Australian")


#sankey diagram
##select columns 
e_australian<-select(Australian, region, wellbeing_constituent, activity)

##running a sankey plot
head(e_australian)
hchart(data_to_sankey(e_australian), "sankey", name = "Values of bats across Australian")



####saving the image 
p5<-hchart(data_to_sankey(e_australian), "sankey", name = "Values of bats across Australian")
p5

p5%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Values of bats in Australian") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p5, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map5.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map5.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map5.png", delay = 20)


#EUROPE


d %>%
  filter(continent =="Europe")

Europe<- d %>%
  filter(continent == "Europe")


#sankey diagram
##select columns 
e_europe<-select(Europe, region, wellbeing_constituent, activity)

##running a sankey plot
head(e_europe)
hchart(data_to_sankey(e_europe), "sankey", name = "Values of bats across Europe")



####saving the image 
p6<-hchart(data_to_sankey(e_europe), "sankey", name = "Values of bats across Europe")
p6

p6%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Values of bats in Europe") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p6, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map6.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map6.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map6.png", delay = 20)


##VALUES ACROSS HUMAN WELLBEING CONSTITUENTS

##material and immaterial assets

d %>%
  filter(wellbeing_constituent =="Material and immaterial assets")

wellbeing<- d %>%
  filter(wellbeing_constituent =="Material and immaterial assets")


#sankey diagram
##select columns 
e_wellbeing<-select(wellbeing, wellbeing_constituent, continent, region, activity)

##running a sankey plot
head(e_wellbeing)
hchart(data_to_sankey(e_wellbeing), "sankey", name = "Material and immaterial values of bats")



####saving the image 
p7<-hchart(data_to_sankey(e_wellbeing), "sankey", name = "Material and immaterial values of bats")
p7

p7%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Material and immaterial values of bats") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p7, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map7.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map7.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map7.png", delay = 20)


###Health

d %>%
  filter(wellbeing_constituent =="Health")

wellbeing_health<- d %>%
  filter(wellbeing_constituent =="Health")


#sankey diagram
##select columns 
e_health<-select(wellbeing_health, wellbeing_constituent, continent, region, activity)

##running a sankey plot
head(e_health)
hchart(data_to_sankey(e_health), "sankey", name = "Health values of bats")



####saving the image 
p8<-hchart(data_to_sankey(e_health), "sankey", name = "Health")
p8

p8%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Health") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p8, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map8.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map8.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map8.png", delay = 20)


### Social, spiritual and cultural relations

d %>%
  filter(wellbeing_constituent =="Social, spiritual and cultural relations")

wellbeing_socio_culture<- d %>%
  filter(wellbeing_constituent =="Social, spiritual and cultural relations")


#sankey diagram
##select columns 
e_socioculture<-select(wellbeing_socio_culture, wellbeing_constituent, continent, region, activity)

##running a sankey plot
head(e_socioculture)
hchart(data_to_sankey(e_socioculture), "sankey", name = "Social spiritual and cultural values of bats")



####saving the image 
p9<-hchart(data_to_sankey(e_socioculture), "sankey", name = "Social spiritual and cultural values of bats")
p9

p9%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Social, spiritual and cultural relations") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p9, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map9.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map9.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map9.png", delay = 20)

##Safety

d %>%
  filter(wellbeing_constituent =="Safety")

wellbeing_socio_culture<- d %>%
  filter(wellbeing_constituent =="Social, spiritual and cultural relations")


#sankey diagram
##select columns 
e_socioculture<-select(wellbeing_socio_culture, wellbeing_constituent, continent, region, activity)

##running a sankey plot
head(e_socioculture)
hchart(data_to_sankey(e_socioculture), "sankey", name = "Social spiritual and cultural values of bats")



####saving the image 
p9<-hchart(data_to_sankey(e_socioculture), "sankey", name = "Social spiritual and cultural values of bats")
p9

p9%>%
  hc_title(text="Sankey Diagram") %>%
  hc_subtitle(text="Social, spiritual and cultural relations") %>%
  hc_caption(text="<b>This is my caption at the bottom.<b>") %>%
  hc_add_theme(hc_theme_economist())


htmlwidgets::saveWidget(widget = p9, file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map9.html" )

webshot::webshot(url = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map9.html", file = "E:\\SIYA_PHD\\Papers\\literature_review\\batvalues_data_review\\map9.png", delay = 20)






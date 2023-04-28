#install tidyverse package#
#install.packages("tidyverse")#
#library("tidyverse")#

#I uploaded the data file into R Studio#
#I then used the read_csv function to load the dataset#

MD_Education <- read_csv("Choose_Maryland___Compare_Counties_-_Education.csv")
View(MD_Education)

#the dataset included 3 extra rows about data source and fields meaning, so I decided to remove them#
md_education1 <- MD_Education[-(25:28),]
View(md_education1)

#rename column fields to make them short and consistent#
md_education <- md_education1 %>% 
  rename("yearly_hs_grads"=`Annual Number of Public High School Graduates`, "stud_tch_ratio"=`Public School Student-Teacher Ratio`,
         "exp_per_stud($)"=`Public School Expenditures Per Pupil ($ Dollars)`, "bs_degree(%)"=`Bachelor's Degree Attainment (%)`,
         "hs_diplomat(%)"=`High School Attainment (%)`, "comm_colleges"=`Number of 2-Year Colleges`, "4_year_colleges"=`Number of 4-Year Colleges and Universities`,
         "comm_col_enr"=`2-Year College Enrollment`, "4_year_col_enr"=`4-Year College/University Enrollment`)

View(md_education)

#I want to check if the yearly_hs_grads column is numeric#
class(md_education$yearly_hs_grads)

#After running the class function, I found out that it's actually a character, so I am changing it to numeric#
md_education$yearly_hs_grads <- as.numeric(md_education$yearly_hs_grads)

#generated a simple graph#
ggplot(md_education, aes(x = County, y = yearly_hs_grads)) + 
  geom_col()

#Noticed how the x axis is hard to read? I generated another simple plot with axis flipped#
ggplot(md_education, aes(x = County, y = yearly_hs_grads)) + 
    geom_col() + coord_flip()
  
#Now I want to order my bar graph from descending order (highest to lowest)#
ggplot(md_education, aes(x = reorder(County, yearly_hs_grads), y = yearly_hs_grads)) + 
  geom_col() + coord_flip()

#Let's customize the graph, the axis were flipped so I decided to name them flipped #
ggplot(md_education, aes(x = reorder(County, yearly_hs_grads), y = yearly_hs_grads)) + 
        geom_col() + coord_flip() + theme_classic() + 
        labs(title = "Maryland High School Graduates", 
           y = "Number of Graduates", 
           x = "") 

#Since the data imported might not be in correct format, I checked and changed the numbers to numeric#
class(md_education$`hs_diplomat(%)`)
md_education$`hs_diplomat(%)` <- as.numeric(md_education$`hs_diplomat(%)`)
md_education$`bs_degree(%)` <- as.numeric(md_education$`bs_degree(%)`)

#Now I want to see the percent of HS graduates per county, this info will be more useful#
ggplot(md_education, aes(x = reorder(County, `hs_diplomat(%)`), y = `hs_diplomat(%)`, fill=`hs_diplomat(%)`)) + 
          geom_col() +
 coord_flip() + theme_bw()  + scale_y_continuous(labels = function(x) paste0(x, "%")) +
          labs(title = "Maryland Graduates By County", 
           y = " HS Graduates", 
           x = "") 

#Doing the same thing as previously but now with the amount of College graduates per county# 
ggplot(md_education, aes(x = reorder(County, `bs_degree(%)`), y = `bs_degree(%)`)) + 
         geom_col(fill="blue")  + geom_text(aes(label = `bs_degree(%)`), hjust = -0.2)+
   coord_flip() + theme_gray()  + scale_y_continuous(labels = function(x) paste0(x, "%")) +
         labs(title = "Maryland Graduates By County", 
           y = "College Graduates", 
           x = "") 
 
#Now I want to see why some counties have a higher percent of college graduates than others#
#I imported another dataset that gives us the median household income per county#
md_socio_econ <- read_csv("Maryland_Counties_Socioeconomic_Characteristics.csv")
View(md_socio_econ)
 
md_socio_econ <- md_socio_econ %>% 
  rename("median_household_income($)" = `Median Household Income ($)` )

#now let's genrate a plot that shows us how the counties compare to each other#
ggplot(md_socio_econ, aes(x = reorder(`Jurisdictions`, `median_household_income($)`), y= `median_household_income($)` )) +
  geom_col(fill= "#663300") + geom_text(aes(label = `median_household_income($)`), hjust = -0.2) + 
  coord_flip() + labs(title = "Maryland Median Household Income By County", y = "Household Income", x= "")

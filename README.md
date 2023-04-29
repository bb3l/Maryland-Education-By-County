# **Maryland Education By County Project**
**Comparing educational outcome in Maryland counties**

**Background**

A family with two kids is relocating to Maryland because the wife has a fantastic job offer. They want to find the best county to live in and their top priority is to ensure that their children receive a great education. One child will start high school as a freshman, while the other will begin college. They have approached you for assistance in identifying a county with an excellent educational system and outcomes for their kids.


**Objective**

Give the couple the most helpful information to aid their decision-making process.


**Question that could help guide the process:**

How do the counties compare in graduation rates?

Which county has the highest percentage of high school graduates?



**Data**

Two sets of publicly available data were obtained through data.gov opendata.maryland.gov

-https://catalog.data.gov/dataset/choose-maryland-compare-counties-education

-https://opendata.maryland.gov/Demographic/Maryland-Counties-Socioeconomic-Characteristics/is7h-kp6x

I decided to clean the data and visualize the results using R and will be attaching the code. 



**Results**

After cleaning and renaming the columns, I decided to generate a simple graph showing the number of high school graduates per county.

This is what it looked like:

<img width="772" alt="plot1" src="https://user-images.githubusercontent.com/124946694/235267495-2010ea10-8a45-450c-9e5d-1b9e97e3a6d2.PNG">



I flipped the coordinate so that the county names don't overlap and make it easy to read.

<img width="772" alt="plot2" src="https://user-images.githubusercontent.com/124946694/235267682-f3f3d67c-bf2c-4f2e-828a-ceeccdc99665.PNG">


I then reordered the counties by descending number of garduates.

<img width="770" alt="plot3" src="https://user-images.githubusercontent.com/124946694/235267754-a1d0c6bb-37d1-4ac1-93e4-aa3cd4a25d53.PNG">


I have a graph, but it may not be useful for the couple's decision-making process. Therefore, I analyzed graduation percentages to provide them with more valuable information. I examined both high school and college degree percentages to get a better idea.

<img width="767" alt="plot5" src="https://user-images.githubusercontent.com/124946694/235268305-108fc18c-160b-4d32-8007-8ec4052d2120.PNG">

Across the board, it seems like the counties are pretty close when it comes to high school diplomat attainment, with Howard at the top with 95.5% graduation rate.

Now let's look at college degree attainment

<img width="770" alt="plot6" src="https://user-images.githubusercontent.com/124946694/235268319-fa5d70b2-fbd8-4357-9ed3-53a37d1697c6.PNG">

There is a significant difference (visually) between the graduation rates. So the focus will now be on college degree graduation rates, as it will assist the couple in making a more informed decision. 

Howard County had the highest number of high school (95.5%) and college graduates (61.4%), making it the preferred location. Calvert County ranked second in high school graduates (93.9%) and fourteenth in college graduates (31.5%), which may not be ideal if the goal is for their child to attain a college degree. Therefore, someone may choose Montgomery County (59%) over Calvert County (31.1%) to improve their child's chances of graduating from college, as Montgomery County's graduation rate is almost twice that of Calvert's.


**What did I find out ?**


Upon comparing graduation rates by county, it became evident that some counties have higher rates than others, especially for college degrees. One aspect that piqued my curiosity was whether this could be influenced by factors such as economic status.

**What factors play a role in the education system at the county level ?**

I then decided to get a second dataset to try and see what I can find. After cleaning it, I decided to explore the median household income per county. 

<img width="1229" alt="plot7" src="https://user-images.githubusercontent.com/124946694/235269462-a9ca5ed9-e092-4609-8767-3f150fd10203.PNG">


I discovered a potential trend that students from counties with higher median household income are more likely to graduate from college than those from lower median household income. However, there are always exceptions, as demonstrated by Calvert County, which has the second-highest median household income but a lower percentage of college graduates.

These findings could be attributed to various factors, such as better school resources and funding, a more conducive learning environment, and students relocating to different counties for education purposes.

It is essential to note that many variables affect how effective a school system is, and there are various methods to measure this effectiveness.

**Further Consideration**

To gain a more in-depth understanding of Maryland's education system, I would investigate additional factors such as population density, school funding, student-teacher ratio, and so on.

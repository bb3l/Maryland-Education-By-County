# **Maryland Education By County Project**
**Comparing educational outcome in Maryland counties**

**Background**

A couple and their children are moving to Maryland because the wife got a great job opportunity and are trying to find what county will be best to live in. Their number one concern is education. They have two kids, one will be starting as freshman in high school and the other will be a freshman in college. So, they want to make sure that they pick a county with a great educational system and outcome for their children.
They approach you with this task and ask if you can help.


**Objective**

Provide the couple with data that could best help them in their decision.


**Question that will help guide me:**
How do the counties compare in terms of graduation rates ?
Which county has the highest percent of highschool graduates ?



**Data**

Two sets of publicly available data were obtained through data.gov opendata.maryland.gov

-https://catalog.data.gov/dataset/choose-maryland-compare-counties-education

-https://opendata.maryland.gov/Demographic/Maryland-Counties-Socioeconomic-Characteristics/is7h-kp6x

I decided to clean the data and visualize the results using R and will be attaching the code. 



**Results**

After cleaning and renaming my columns, I decided to generate a simple graph showing the number of high school graduates per counties

This is what it looked like:

<img width="772" alt="plot1" src="https://user-images.githubusercontent.com/124946694/235267495-2010ea10-8a45-450c-9e5d-1b9e97e3a6d2.PNG">



Flipped the coordinate so that the county names don't overlap and are easy to read.

<img width="772" alt="plot2" src="https://user-images.githubusercontent.com/124946694/235267682-f3f3d67c-bf2c-4f2e-828a-ceeccdc99665.PNG">


Reordered the counties by descending number of garduates.

<img width="770" alt="plot3" src="https://user-images.githubusercontent.com/124946694/235267754-a1d0c6bb-37d1-4ac1-93e4-aa3cd4a25d53.PNG">


Now I got this , but what will it tell the couple ? It would not really help them in making their decision. So I decided to look at graduations percentages to get a better idea. I looked at both the high school and college degree percentage. 

<img width="767" alt="plot5" src="https://user-images.githubusercontent.com/124946694/235268305-108fc18c-160b-4d32-8007-8ec4052d2120.PNG">

Across the board, it seems like the counties are pretty close when it comes to high school diplomat attainment.

Now let's look at college degree attainment

<img width="770" alt="plot6" src="https://user-images.githubusercontent.com/124946694/235268319-fa5d70b2-fbd8-4357-9ed3-53a37d1697c6.PNG">

Now there's a big difference! The college degree graduation rates will be the main focus as it will better help the couple in solidyfying their choice. 

Howard county came out first for most highschool and college graduates. So this will also help someone pick Mongtgomery county over Calvert county if they wanted their child to have a btter chance at graduating college as Montgomery county's rate is almost twice that of Caverlt's. 


**What did I find out ?**

After comparing the graduations rates by counties, I realized that some counties have better rates than others, especially for college degrees. One thing that I was curious about was trying to find out if this could be affected by some kind of factor, like economical factor. 

**What factors play a role in the education system at the county level ?**

I then decided to get a second dataset to try and see what I can find. After cleaning it, I decided to explore the median household income per county. 

<img width="1229" alt="plot7" src="https://user-images.githubusercontent.com/124946694/235269462-a9ca5ed9-e092-4609-8767-3f150fd10203.PNG">


I found somewhat of a trend! Students from counties with higher median household income most likely have a better chance at graduating from college than those from lower median household income. Of course there are always exceptions to everything. Calvert county has the second highest median household but its college graduates percent is on the lower side. 
These results could be because of a lot of different reasons, like better school ressources and funding, better environment, students moving to different counties to attend school etc...
There are many variables in determining how good a school system is and there are many ways to measure.

**Further Consideration**

If I wanted to further explore the education system of Maryland, I would look into the additional factors such as population density, school fundings, student teacher ratio etc...

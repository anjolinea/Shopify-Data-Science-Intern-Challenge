# Shopify-Data-Science-Intern-Challenge

## Question 1:
On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis.

The program for this question can be found in [Question1.ipynb](https://github.com/anjolinea/Shopify-Data-Science-Intern-Challenge/blob/main/Question1.ipynb).

a) Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 
The original AOV value was an incredibly high value of $3145.13 which was obtained by simply taking the average of the column "order_amount". Through exploring the database, we found that there were suspiciously similar orders and an outlier store which was selling each pair of shoes at $25725.00. We removed the suspicious orders and consider the data with and without the outlier. Without the outlier and suspicious orders, the average order value looks realistic. 

AOV with outlier included (real data): 754.09
AOV without outlier included (closer to median, but technically not including all entries): 302.58

b) What metric would you report for this dataset?

The average order value is an important metric that I think should be reported. Another metric would be the average cost per pair of shoes. With this metric you could examine many things, like whether the sneaker market is leaning towards more expensive shoes or cheaper shoes. I would also report this metric without outliers. 

c) What is its value?

$151.69

## Question 2:

The SQL file for this question can be found in [Question2.sql](https://github.com/anjolinea/Shopify-Data-Science-Intern-Challenge/blob/main/Question2.sql).

a) 54

b) Peacock

c) Boston Crab Meat

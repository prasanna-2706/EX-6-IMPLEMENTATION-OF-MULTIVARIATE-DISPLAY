library(ggplot2)
library(GGally)
library(dplyr)
df <- read.csv("C:/Users/PRASANNA/Downloads/6.retail_business.csv")
colnames(df) <- c(
  "Order_ID",
  "Region",
  "Product_Category",
  "Sales",
  "Profit",
  "Discount",
  "Customer_Segment"
)
ggparcoord(
  data = df,
  columns = c(4, 5, 6),
  groupColumn = "Customer_Segment",
  scale = "uniminmax"
) +
  labs(
    title = "Parallel Coordinates: Sales, Profit, Discount by Segment",
    subtitle = "PRASANNA S M | Roll No: 23BAD087"
  ) +
  theme_minimal()
ggplot(df, aes(x = Sales, y = Profit, size = Discount, color = Region)) +
  geom_point(alpha = 0.6) +
  scale_size(range = c(3, 10)) +
  labs(
    title = "Bubble Chart: Sales vs Profit",
    subtitle = "PRASANNA S M | Roll No: 23BAD087",
    x = "Sales",
    y = "Profit"
  ) +
  theme_minimal()
ggplot(df, aes(x = Sales, y = Profit, color = Customer_Segment)) +
  geom_point(size = 2) +
  facet_wrap(~Region) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Trellis Display: Performance by Region",
    subtitle = "PRASANNA S M | Roll No: 23BAD087",
    x = "Sales",
    y = "Profit"
  ) +
  theme_bw()

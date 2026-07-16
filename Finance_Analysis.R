personal_finance <- read.csv("/Users/heidi/Documents/personal_finance.csv")
head(personal_finance)


library(dplyr)
#dplyr -> for data manipulation, operation (%>%) or (|>), filter(), select(), mutate()
filtered_data <-filter(personal_finance, financial_scenario == 'inflation' )
head(filtered_data)

install.packages('tidyverse')
library(ggplot2)
ggplot(data = filtered_data, aes(x = monthly_income, y = monthly_expense_total)) +
  geom_line(color = "blue", size = 1) +
  geom_smooth(method = "lm", se = FALSE, color ='red') +
  labs(title = 'monthly income vs monthly expense',
    x = 'monthly income',
    y = 'monthly expense') +
  theme_minimal()
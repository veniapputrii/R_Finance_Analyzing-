personal_finance <- read.csv("/Users/heidi/Documents/personal_finance.csv")
head(personal_finance)


library(dplyr)
#dplyr -> for data manipulation, operation (%>%) or (|>), filter(), select(), mutate()
filtered_data <-filter(personal_finance, financial_scenario == 'inflation' )
head(filtered_data)

#Multivariate Visualization to find the pattern using heatmap
install.packages("pheatmap")
library(pheatmap)

#Filter rows and select specific columns
heatmap_viz <- personal_finance %>%
  select(monthly_income, monthly_expense_total, savings_goal_met,credit_score, debt_to_income_ratio, loan_payment, investment_amount, subscription_services, discretionary_spending, essential_spending, rent_or_mortgage, financial_advice_score)

h_matrix <- as.matrix(heatmap_viz)

pheatmap(h_matrix,
         scale = 'column', 
         clustering_distance_rows = "euclidean",
         clustering_distance_cols = "euclidean")
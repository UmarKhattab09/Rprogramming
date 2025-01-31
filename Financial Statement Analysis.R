#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Profit
profit <- revenue - expenses
profit

#ProfitAfterTax
AfterTax = profit*0.3
profitAfterTax<- profit-AfterTax

#ProfitMargin
ProfitMargin <- round(AfterTax/revenue,2)

#GoodMonths
Average <- mean(profitAfterTax)
GoodMonths <- profitAfterTax>Average
GoodMonths

#BadMonths
BadMonths <- !GoodMonths

#TheBestMonth
BestMonth <-profitAfterTax== max(profitAfterTax)

#TheWorstMonth
WorstMonth <- profitAfterTax == min(profitAfterTax)

#Units of Thousands
revenue.1000 <- round(revenue/1000,2)
expenses.1000 <- round(expenses/1000,2)
profit.1000 <- round(profit/1000,2)
profitAfterTax.1000 <- round(profitAfterTax/1000,2)


#Matrcies
m <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profitAfterTax.1000,
  ProfitMargin,
  GoodMonths,
  BadMonths,
  BestMonth,
  WorstMonth
  
)
m

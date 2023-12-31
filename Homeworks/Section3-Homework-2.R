#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

# Profit for Each month
profit <- revenue - expenses


# profit after tex
profit_after_tax <- profit - (profit * .30)


# good months when profit was greater than the mean for that year
mean_profit <- mean(profit_after_tax)

good_months <- c()
for (i in  1:length(profit_after_tax)){
  if (profit_after_tax[i] > mean_profit){
    good_months[i] <- "Good"
  } else{
    good_months[i] <- "Bad"
  }
}

best_month <- profit_after_tax == max(profit_after_tax)
best_month <- profit_after_tax == min(profit_after_tax)

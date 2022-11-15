#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#1
profit <- revenue-expenses

#2
tax <- round((0.3)*profit,digits=2)
profitat <- profit-tax

#3
pmargin <- round((profitat/revenue)*100)
pmargin

#4
meanprofitat <- mean(profitat)
good <- profitat>meanprofitat
good

#5
bad <- profitat<meanprofitat
bad

#6
best <- profitat==max(profitat)
best

#7
worst <- profitat==min(profitat)
worst

#bonus
revenue.1000 <- round(revenue/1000, 0)
expenses.1000 <- round(expenses/1000, 0)
profit.1000 <- round(profit/1000, 0)
profitat.1000 <- round(profitat/1000, 0)

M <- rbind(revenue.1000, 
  expenses.1000, 
  profit.1000,
  profitat.1000,
  pmargin,
  good,
  bad,
  best,
  worst)
M

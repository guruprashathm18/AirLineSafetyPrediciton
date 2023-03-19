library(arules)
library(arulesViz) 
library(RColorBrewer) 
file=read.csv("D:/sem_5/DATA_MINING_PROJECT/airline-safety.csv",1)
rules=apriori(file,parameter=list(supp=0.2, conf=0.5)) 
inspect(rules)
itemFrequencyPlot(items(rules), topN=15,
                  col= brewer.pal(8, 'Pastel2'),
                  main = 'Relative Item Frequency Plot', type = "relative",
                  ylab = 'Item Frequency (Relative)')


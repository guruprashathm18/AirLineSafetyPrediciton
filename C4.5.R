library("RWeka")
library("caret")
df=read.xlsx("D:/sem_5/DATA_MINING_PROJECT/a-s.xlsx",1)
set.seed(1958) # set a seed to get replicable results
train = createFolds(df $Safety, k=10)
C45Fit <- train(Safety ~., method="J48", data=df,
                tuneLength = 5,trControl = trainControl(method="cv", indexOut=train))
C45Fit$finalModel
plot(C45Fit$finalModel)

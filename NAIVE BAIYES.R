data<- read.csv("D:/sem_5/DATA_MINING_PROJECT/airline-safety1.csv")
str(data) 
library(e1071) 
library(caTools)
library(caret)
split <- sample.split(data, SplitRatio = 0.7) 
train_cl <- subset(data, split == "TRUE") 
test_cl <- subset(data, split == "FALSE") 
train_scale <- scale(train_cl[, 2:5]) 
test_scale <- scale(test_cl[, 2:5]) 
set.seed(120) # Setting Seed
classifier_cl <- naiveBayes(Safety ~ ., data = train_cl) 
classifier_cl
y_pred <- predict(classifier_cl, newdata = test_cl) 
cm <- table(test_cl$Safety, y_pred)
cm 
confusionMatrix(cm)

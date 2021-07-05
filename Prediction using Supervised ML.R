#Data Science and Business Analytics, July 2021
#Task-1 Prediction using Supervised ML
#Name:- Angelmary Francis

#Task:- What will be predicted score if a student studies for 9.25 hrs/ day?

#Import Dataset

#Set the data in data frame
data=as.data.frame(Regression)
x=data$Scores
y=data$Hours

#plot the data
plot(x~y,col="red",pch="*") #to check whether variables have a positive relationship 
reg=lm(Scores~Hours,data=data)
abline(reg,col="blue")
summary(reg)

#to predict the score
studyhr=data.frame(Hours=9.25)
prediction=predict(reg,studyhr)
prediction

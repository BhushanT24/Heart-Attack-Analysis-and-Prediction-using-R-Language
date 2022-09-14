#importing the heart dataset
data <- read.csv(file.choose(),header = TRUE)

#viewing the dataset
View(data)

#graph - line
x <- data[1:20, "chol"]
plot(x, type = "o", col="blue", ylab = "chol", main = "Heart details of Male and Female and Cholesterol")

#Pie Chart
x <- data[1:13,"oldpeak"]
Labels <- data[1:13,"oldpeak"]
pie(x,Labels,main = "oldpeak in Heart Diseases",col=rainbow(length(x)))

#Bar Plot
B <- data[1:20,"age"]
N <- data[1:20,"cp"]
barplot(B,names.arg=N, xlab = "Age", ylab = "Cp", main="Details of Heart Disease  Patient Ages and  Cp", col="Green")

#Box Plot
in_data <- data[,c('age','cp')]
print(in_data)
boxplot(age ~ cp,data=data,xlab='No of Age',ylab = 'Cp',main="Details of Heart Attack Patient",col=c("green","yellow"))

#Scatter Plot
sp <- data[1:303,c("trtbps","thalachh")]
print(sp)
plot(x=data$trtbps,y=data$thalachh,ylab="Thalachh",main="Trtbps Vs Thalachh",col='blue')

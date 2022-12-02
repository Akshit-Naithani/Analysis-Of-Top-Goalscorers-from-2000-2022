library(ggplot2)
library(moments)
setwd('C:/Users/[your username]/OneDrive/Documents')

df = read.csv("Prolific Scorers Of This Decade.csv")
View(df)

#Basic Statistics
plot(df$Goals~factor(df$Footballers),ylab = "Goals", xlab = "Footballer",main = 'Goals Scored (Till 2021-22 Seasons)')
plot(df$Assists~factor(df$Footballers),ylab = "Assists", xlab = "Footballer",,main = 'Assists Given (Till 2021-22 Seasons)')
plot(df$Games.Played~factor(df$Footballers),ylab = "Games Played", xlab = "Footballer",main = 'Total Games Played In Their Carrers (Till 2021-22 Seasons)')
pie(df$Shots.Per.90,labels = df$Footballers,main = 'Shots Taken P90 (Till 2021-22 Seasons)')
pie(df$Shot.On.Target.Per.90,labels = df$Footballers,main = 'Shots On Target P90 (Till 2021-22 Seasons)')
pie(df$Shooting.Accuracy.in...,,main = 'Overall Shooting Accuracy (Till 2021-22 Seasons)',labels = df$Footballers)

#Higher Statistics
plot(y = df$Goals, x = df$Expected.Goals,type = 'p',main = 'Goal Scoring Efficiency',ylab = 'Goals',xlab = 'Expected Goals')
text(y = df$Goals, x = df$Expected.Goals, labels=df$Footballers, cex=0.9, font=2)

plot(y = df$Shot.On.Target.Per.90,x = df$Shots.Per.90,type = 'p',main = 'Shooting Efficiency',ylab = 'Shot On Target P90',xlab = 'Shots P90')
text(y = df$Shot.On.Target.Per.90,x = df$Shots.Per.90, labels=df$Footballers, cex=0.9, font=2)

plot(y = df$Shooting.Accuracy.in...,x = df$Shots.Per.90,type = 'p',main = 'Shooting Efficiency',ylab = 'Shooting Accuracy',xlab = 'Shots P90')
text(y = df$Shooting.Accuracy.in...,x = df$Shots.Per.90, labels=df$Footballers, cex=0.9, font=2)

plot(y = df$Assists, x = df$Expected.Assists,type = 'p',main = 'Assists Efficiency',ylab = 'Assists',xlab = 'Expected Assists')
text(y = df$Assists,x = df$Expected.Assists, labels=df$Footballers, cex=0.9, font=2)

plot(y = df$Completed.Passes.Per.Game,x = df$Attempted.Passes.Per.Game,type = 'p',main = 'Passing Efficiency',ylab = 'Passes Completed P90',xlab = 'Attempted Passes P90')
text(y = df$Completed.Passes.Per.Game,x = df$Attempted.Passes.Per.Game, labels=df$Footballers, cex=0.9, font=2)

plot(y = df$Completed.Passes.Per.Game,x = df$Progressive.Passes.Per.Game..in.yards.,type = 'p',main = 'Passing Efficiency',ylab = 'Passes Completed P90',xlab = 'Progressive Passes P90 (In Yards)')
text(y = df$Completed.Passes.Per.Game,x = df$Progressive.Passes.Per.Game..in.yards., labels=df$Footballers, cex=0.9, font=2)

eff = c()
for (i in 1:10)
{
  a = df$Goals[i]/df$Expected.Goals[i]
  eff[i] = a
}
plot(eff~factor(df$Footballers),ylab = "Goals/Expected Goals", xlab = "Footballer",main = 'Goalscoring Efficiency Of Players')

df1 = read.csv("Prolific Scorers Of This Decade2.csv")


plot(y = df1$Shot.On.Target.Per.90,x = df1$Shots.Per.90,type = 'p',main = 'Shooting Efficiency',ylab = 'Shot On Target P90',xlab = 'Shots P90')
text(y = df1$Shot.On.Target.Per.90,x = df1$Shots.Per.90, labels=df1$Footballers, cex=0.9, font=2)

plot(y = df1$Shooting.Accuracy.in...,x = df1$Shots.Per.90,type = 'p',main = 'Shooting Efficiency',ylab = 'Shooting Accuracy',xlab = 'Shots P90')
text(y = df1$Shooting.Accuracy.in...,x = df1$Shots.Per.90, labels=df1$Footballers, cex=0.9, font=2)

plot(y = df1$Completed.Passes.Per.Game,x = df1$Attempted.Passes.Per.Game,type = 'p',main = 'Passing Efficiency',ylab = 'Passes Completed P90',xlab = 'Attempted Passes P90')
text(y = df1$Completed.Passes.Per.Game,x = df1$Attempted.Passes.Per.Game, labels=df1$Footballers, cex=0.9, font=2)

plot(y = df1$Completed.Passes.Per.Game,x = df1$Progressive.Passes.Per.Game..in.yards.,type = 'p',main = 'Passing Efficiency',ylab = 'Passes Completed P90',xlab = 'Progressive Passes P90 (In Yards)')
text(y = df1$Completed.Passes.Per.Game,x = df1$Progressive.Passes.Per.Game..in.yards., labels=df1$Footballers, cex=0.9, font=2)

eff1 = c()
for (j in 1:4)
{
  a1 = df1$Goals[j]/df1$Expected.Goals[j]
  eff1[j] = a1
}
plot(eff1~factor(df1$Footballers),ylab = "Goals/Expected Goals", xlab = "Footballer",main = 'Goalscoring Efficiency Of Players')

#3333333333333333333333333333333333333333333333333333333
#example3.csv
set.seed(2584)
gender<-rep(c("female", "male"), each=50)
party<-rep(rep(c("republican", "democrat"), each=25),2)
support<-c(rnorm(25,63,7),
           rnorm(25,73,7),
           rnorm(25,47,7),
           rnorm(25,73,7))
df<-data.frame(gender,party,support)
write.csv(df, file="example3.csv", row.names=FALSE)

#homework3.csv
set.seed(359)
major<-c(rep("psychology",40),rep("business",60))
grades<-c("freshman", "sophomore", "junior", "senior")
year<-c(rep(grades,each=10), rep(grades, each=15))
conservatism<-c(rnorm(10,40,5),
                rnorm(10,35,5),
                rnorm(10,30,5),
                rnorm(10,25,5),
                rnorm(15,50,5),
                rnorm(15,60,5),
                rnorm(15,70,5),
                rnorm(15,80,5))
df<-data.frame(major, year, conservatism)
write.csv(df, file="homework3.csv", row.names=FALSE)


#44444444444444444444444444444444444444444444444444444444
#example4.csv
set.seed(124)
major<-rep(c("engineering", "psychology"),30)
gender<-c(rbinom(30,1,.3), rbinom(30,1,.7))
gender[gender==0]<-"female"
gender[gender==1]<-"male"
gender<-as.factor(gender)
df<-data.frame(major, gender)
write.csv(df, file="example4.csv", row.names=FALSE)

#homework4.csv
set.seed(237)
condition<-rep(c("experimental", "control"),40)
agreement<-c(rbinom(40,1,.52), rbinom(40,1,.63))
agreement[agreement==0]<-"no"
agreement[agreement==1]<-"yes"
agreement<-as.factor(agreement)
df<-data.frame(condition, agreement)
write.csv(df, file="homework4.csv", row.names=FALSE)


#55555555555555555555555555555555555555555555555555555555
#example5.csv
set.seed(920)
base<-rnorm(25,300,20)
group<-rep(c("experimental", "control"), each=25)
rt<-c(base-rnorm(25,10,10), base+rnorm(25,10,10))
df<-data.frame(group,rt)
write.csv(df,file="example5.csv", row.names=FALSE)

#homework5.csv
set.seed(899)
base<-rnorm(32,45,10)
music<-rep(c("none","metal"),each=32)
wpm<-c(base-rnorm(32,3,2),base+rnorm(32,3,2))
df<-data.frame(music,wpm)
write.csv(df,file="homework5.csv",row.names=FALSE)


#55555555555555555555555555555555555555555555555555555555
#Serial Position Effect
#example6.csv
set.seed(1121)
base<-rnorm(12,50,10)
percent<-c(base+rnorm(12,20,5),  #position1 yes
           base+rnorm(12,12,5),  #position2 yes
           base+rnorm(12,5,5),   #position3 yes
           base+rnorm(12,0,5),   #position4 yes
           base+rnorm(12,-4,5),  #position5 yes
           base+rnorm(12,-5,5),  #position6 yes
           base+rnorm(12,-6,5),  #position7 yes
           base+rnorm(12,-8,5),  #position8 yes
           base+rnorm(12,-10,5), #position9 yes
           base+rnorm(12,-12,5), #position10 yes
           base+rnorm(12,20,5),  #position1 no
           base+rnorm(12,12,5),  #position2 no
           base+rnorm(12,5,5),   #position3 no
           base+rnorm(12,0,5),   #position4 no
           base+rnorm(12,-4,5),  #position5 no
           base+rnorm(12,-5,5),  #position6 no
           base+rnorm(12,-2,5),  #position7 no
           base+rnorm(12,4,5),   #position8 no
           base+rnorm(12,8,5),   #position9 no
           base+rnorm(12,15,5))  #position10 no
position<-as.factor(rep(rep(1:10,each=12),2))
distractor<-rep(c("yes","no"),each=120)
subject<-as.factor(rep(1:12,20))
subject2<-as.factor(c(rep(1:12,10),rep(13:24,10)))
df<-data.frame(percent,position,distractor,subject,subject2)
write.csv(df,file="example6.csv", row.names=FALSE)

#Visual search performance
set.seed(7)
base<-rnorm(8,400,20)
rt<-c(base+rnorm(8,-100,15),
      base+rnorm(8,-100,15),
      base+rnorm(8,-100,15),
      base+rnorm(8,50,15),
      base+rnorm(8,75,15),
      base+rnorm(8,100,15))
type<-rep(c("feature", "conjunction"),each=24) #conjunction vs feature
distractors<-as.factor(rep(rep(c(4,8,12),each=8),2))
subject<-as.factor(rep(1:8,6))
subject2<-as.factor(c(rep(1:8,3),rep(9:16,3)))
df<-data.frame(rt,type,distractors,subject,subject2)
write.csv(df,file="homework6.csv", row.names=FALSE)

#도수분포표 작성
table(survey $Gender)

#상대도수분포표 작성
Gender_table <-table(survey $Gender)
prop.table(Gender_table)

#교차표 작성
table(survey $Gender, survey $Grade)

#색상 지정
colors <-c("red","orange","yellow","green","blue")
#막대그래프 작성
barplot(table(survey $Nationality), xlab="Nationality",ylab="Frequency",main="국가별 학생 수",col=colors, ylim=c(0,100))
nationality_freq <- table(survey$Nationality)
bp2 <-barplot(table(survey $Nationality), xlab="Nationality",ylab="Frequency",main="국가별 학생 수",col=colors, ylim=c(0,100))
text(x=bp2, y=nationality_freq, labels=nationality_freq,pos=3)

#막대그래프(가로)
barplot(table(survey $`residential area`))
barplot(table(survey $`residential area`),xlab="residential area", ylab="freqency",ylim=c(0,100))
bp <- barplot(table(survey $`residential area`),xlab="residential area", ylab="frequency",ylim=c(0,100))
table(survey $`residential area`)
entry <-c(1,58,1,7,1,12) #entry에 값 대입
text(x=bp,y=entry,labels=entry,pos=3)
#막대그래프3 편집(가로)
barplot(table(survey $`residential area`),xlab="frequency",ylab="residential area",xlim=c(0,100),horiz=TRUE)
text(x=entry, y=bp, labels=entry, pos=4)

#2개의 인자를 사용한 막대그래프
Gender_Grade <-table(survey $Gender, survey $Grade)
barplot(Gender_Grade,legend=TRUE,xlab="Grade",ylab="남자(1)과 여자(2) 수",main="학년별 남자와 여자 수",col=colors)

#파이차트
pie(table(survey $Grade))

#히스토그램
hist(survey $Age, main="경영통계분석2 수강생들의 나이",xlab="Age",ylab="Frequency",col=colors,xlim=c(15,30),ylim=c(0,40))
histo <-hist(survey $Age, main="경영통계분석2 수강생들의 나이",xlab="Age",ylab="Frequency",col=colors,xlim=c(15,30),ylim=c(0,40))
text(x = histo $mids, y = histo$counts, labels = histo$counts, pos = 3)

#박스플롯 
boxplot(Grade_Age$`2nd Grade`,Grade_Age$`3rd Grade`,Grade_Age$`4th Grade`,Grade_Age$`5th Grade`,main="학년별 경통분2수강생들의 나이",col="yellow",names=c("2학년","3학년","4학년","5학년"))

#산점도
survey$Grade_numeric <- as.numeric(gsub("\\D", "", survey$Grade))
plot(x = survey$Grade_numeric, y = survey$Age, xlab = "학년", ylab = "나이", main = "학년별 나이", pch = 8, col = "blue")




setwd("C:/mycode/1118")
install.packages('tm')
install.packages('wordcloud')
#
a1125<-readLines('1125.txt')
S=strsplit(a1125,split=' ')#將句子分割成單字,分割完是list格式,[1]->指定段落
y=unlist(S)#->去除list,留下向量
y[[1]][1]
length(y)
y<-tolower(y)#變小寫
stopwords()
z<-removeWords(y,stopwords())
#移除空集
z1<-z[nchar(z)>0]
#移除標點
z2<-gsub('\\W','',z1)
poswords<- scan('positive.txt',what = 'character')
nagwords<- scan('nagetive.txt',what = 'character')
match(z2,poswords)#比對相同的單字
posscores<-sum(!is.na(match(z2,poswords)))#正向分數
wordcloud(z2,min.freq=2,randasdom.order =F,scale=c(2,1),colors = 'lightblue')#母體要夠多,有主題性
a#scale=c(x,y)->x最大頻率字大小y
#1118
str(readLines('a.txt'))
paste(readLines('a.txt'),collapse = ' ')#collapse以''做斷句
a<-c("Hello's","world's","name","is","R")
a
text<-paste(a,collapse = ' ')
gsub(pattern = '\\W',replacement = ' ',text)#小寫w代字母.數字.底線,大寫W是除此之外所有
strsplit(text,split=' ')

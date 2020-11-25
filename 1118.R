setwd("C:/mycode/1118")
install.packages('tm')
#
a1125<-readLines('1125.txt')
strsplit(a1125[1],split=' ')#將句子分割成單字,[1]->指定段落

str(readLines('a.txt'))
paste(readLines('a.txt'),collapse = ' ')#collapse以''做斷句
a<-c("Hello's","world's","name","is","R")
a
text<-paste(a,collapse = ' ')
gsub(pattern = '\\W',replacement = ' ',text)#小寫w代字母數字底線,大寫W是除此之外所有
strsplit(text,split=' ')

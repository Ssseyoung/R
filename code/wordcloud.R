# 
install.packages("wordcloud2")
library(wordcloud2)

wordcloud2(data=demoFreq, shape="star")

#
text <- c("BTS","ABC","Text","Timo","Vein","Mi","Origin","Zed","Ari","Orn")

word_data <- table(text)
wordcloud2(word_data)


#
prog_word <- c("Python", "Java", "JavaScript", "C", "C++", "C#", "R", "Ruby", "Go", "Swift", "PHP", "Perl", "Objective-C", "TypeScript", "Kotlin", "Scala", "Rust", "Lua", "Haskell", "Matlab", "Julia", "Groovy", "Shell", "VB.NET", "Delphi", "PL/SQL", "Ada", "Dart", "Lisp", "COBOL")
freq_count <- c(29, 92, 56, 14, 75, 63, 41, 83, 52, 19, 87, 9, 36, 61, 77, 44, 3, 96, 70, 11, 68, 25, 48, 32, 84, 59, 95, 5, 72, 50)
word_data <- data.frame(word=prog_word, freq=freq_count)

wordcloud2(word_data
           , size=0.2
           ,fontFamily="맑은 고딕"
           ,color="random-light"
           ,backgroundColor="black")

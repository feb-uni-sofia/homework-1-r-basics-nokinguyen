#a)
x<-c(4,1,1,4)

#b)
y<-c(1,4)

#c) We have two vectors that have different sizes. The smaller vector becomes c(1,4,1,4).
x-y

#d)
s<-c(x,y)

#e)
rep(s,10)
srep<-rep(s,10)
length(srep)

#f)
rep(s, each=3)

#g)
seq(7,21, by=1)
7:21

#h)
lseq<-seq(7,21, by=1)
length(lseq)

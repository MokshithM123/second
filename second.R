n <- as.integer(readline(prompt = "Enter no of Employee"))
EmpId <- vector(mode="character", length= n)
EmpName <- vector(mode="character", length= n)
DOJ <- vector(mode="character", length= n)
EmpCode <- vector(mode="numeric",length = n)
Dept <- vector(mode="character",length = n)
Design <- vector(mode="character",length = n)

print("Enter the employee details")

for (i in 1:n){
 EmpId[i] <- as.character(readline())
 EmpName [i] <-as.character(readline())
 DOJ[i] <- as.character(readline())
 EmpCode[i] <- as.integer(readline())
 Dept[i] <- as.character(readline())
 Design[i] <- as.character(readline())
}

Emp <- data.frame(EmpId,EmpName,DOJ,EmpCode,Dept,Design)
print("The Employee detials are as follows")
print(Emp)


write.csv(Emp,"/home/student/Desktop")

empo<-read.csv("/home/student/Desktop")

print(empo)

print("Enter a new row")
a<- readline(prompt = "EmpId")
b<- readline(prompt = "EmpName")
c<- readline(prompt = "DOJ")
d<-readline(prompt = "EmpCode")
e<- readline(prompt = "Dept")
f<-  readline(prompt = "Design")
x<- data.frame(a,b,c,d,e,f)

print(x)

write.table(x,"/home/student/Desktop",col.names = FALSE, append = TRUE,row.names= TRUE, quote= FALSE, sep = ",")

Emp<-read.csv("/home/student/Desktop")
print(Emp)


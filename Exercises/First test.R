#Declare variable
#Variable can't begin with numbers
# The long of name is important
# You never can use a words reserves

#For instance VAR()

# Assignment variable1 <- value

variable1 <- "Hola"
print(variable1)

#Create vector
#Vector: The vectors can contain different values of the same type
#Syntax: name <- c(value1,value2,...valueN)
#Such as
###############
vector1 <-c(1,12,33,4,5,6)
print(vector1)
#In this case the elements are listed from 1 not from 0

#Funtion: Cat
#You use cat for concatenate values
#Look ALL DATA
cat("The vector's content are: ",vector1[])

# Auto fill
#Declare from begin the vector until were end
vector2 <-c(5:30) #Create data from 5 until 30
print(vector2)

#Use funtion: seq
#With seq you define the limit of data
vector3 <-seq(10,20)
print(vector3)

#Create data with a sequence for example in pairs
vector4 <-seq(1,10, by = 2)
print(vector4)

#Repeat data
vector5 <-rep(2,times=5) #repeat 2 5 times
print(vector5)

#Repeat a sequence of data
vector6 <-rep(30,40, each = 6)
print(vector6)

#Create a view
View(vector6)

##Create a Matrix
matrix <-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow = TRUE)
#with byrow indicate that the matrix will be create first for each row
View(matrix)

#Create a list
gasto <-list(servicios="Publicos",lista_servicios = c("agua","luz","gas"),precio=c(10.000,55.00,200.1))
View(gasto)

#Activity 1
#Search price of agua
gasto$precio[which(gasto$lista_servicios=="agua")]

#Use match
gasto$precios[match("agua",gasto$lista_servicios)]


# Step 0: Install and Load Packages
#install.packages("plyr") - Commented out to avoid errors
library("plyr") 

# Step 1:
## Import Provided data set
studentData <- read.table("Mod8Dataset.txt", header= T, sep=",")
head(studentData)
str(studentData)

## Calculate categorize data by mean and calculate mean of grades 
studentData_Mean<- ddply(studentData, "Sex", transform, Mean_Grade=mean(Grade))
tail(studentData_Mean)

## Write the resulting output to a file
write.table(studentData_Mean, "Sorted Student Data with Mean", sep=",")

# Step 2:
## Check original dataset for name that contain the letter I
grep("[iI]", studentData$Name)

## Create a new data set with those names

### First method- using indeces returned by grep to subset from original data
students_with_i <- studentData[grep("[iI]", studentData$Name),]
rownames(students_with_i) <- NULL # resetting row numbers
students_with_i 

### Second method- using subset function, second argument takes logical vector (grepl is same as grep- but outputs logical vector)
students_with_i2 <- subset(studentData, grepl("[iI]", studentData$Name))
students_with_i2

# Step 3: 
## Convert these names to a csv file 
write.csv(students_with_i, "Students with I in Names")

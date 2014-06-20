#Cleaning data - Project

# These are the files we require
testFile <- "./test/X_test.txt"
trainFile <- "./train/X_train.txt"
activityTrainFile <- "./train/y_train.txt"
activityTestFile <- "./test/y_test.txt"
subjectIDTrainFile <- "./train/subject_train.txt"
subjectIDTestFile <- "./test/subject_test.txt"
featureNames <- "./features.txt"

# From the features.txt file, the following are all the columns we require:
#    these columns all have "mean()" and "std()" at the end of the variable names
columns <- c(1:6,41:46,81:86,121:126,161:166,201:202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)

# Start with null in all 561 columns and then replace null with numeric for those columns we want
nulColumns <- c(rep("NULL", 561))
nulColumns[columns] <- "numeric"

# Read in the train and test data sets selecting only the columns we want (there should be 66)
train <- read.table(trainFile, header = FALSE, colClasses = nulColumns, sep = "")
test <- read.table(testFile, header = FALSE, colClasses = nulColumns, sep = "")

# Read in the actvity and id data
activityTrain <- read.table(activityTrainFile, header = FALSE)
activityTest <- read.table(activityTestFile, header = FALSE)
idTrain <- read.table(subjectIDTrainFile, header = FALSE)
idTest <- read.table(subjectIDTestFile, header = FALSE)

# Combine the train data with its id and activity data
train <- cbind(idTrain, activityTrain, train)

# Combine the test data with its id and activity data
test <- cbind(idTest, activityTest, test)

# Merge the train and test data frames
df = rbind(train, test)

# Read the features.txt file to get the feature names for the columns we want
columnNamesDF <- read.table(featureNames, header = FALSE)
columnNamesDF <- columnNamesDF[columns,]
columnNames <- make.names(columnNamesDF[,2])

# Make the names a bit nicer
columnNames <- gsub("...X", ".X", columnNames)
columnNames <- gsub("...Y", ".Y", columnNames)
columnNames <- gsub("...Z", ".Z", columnNames)
columnNames <- gsub("..", "", columnNames, fixed = TRUE)
columnNames <- c("ID", "Activity", columnNames)

# Use these names as the variable names for the data frame
colnames(df) <- columnNames

# Make the activity a factor variable
activityLabels <- c("Walking", "Walking Up", "Walking Down", "Sitting", "Standing", "Laying")
df$Activity <- factor(df$Activity, labels = activityLabels)

# Use the plyr package to summarize the data
library(plyr)
tidyDF <- ddply(df, .(ID, Activity), colwise(mean))

# Write the resulting tidy data frame to a file
write.table(tidyDF, file = "./tidyDF.txt", sep = ",")
















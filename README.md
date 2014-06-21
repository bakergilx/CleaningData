CleaningData
============

The objective of this project is the following:

1. You should create one R script called run_analysis.R that does the following. 
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names. 
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

This README file discusses the run_analysis.R script, for a discussion of the varibles please see the Codebook.md

The script is straightforward.

The first step is to load into variable names the file names we require.

The only manual step is to review the features.txt file to determine which columns we require in our data set.  I chose
those columns with *mean* and *std* in the feature name, where mean and standard deviation appeared in pairs.  I 
chose not to select those features with mean in the title without a corresponding standard deviation.  These
column numbers from features.txt were placed into the variable columns.

The next step reads in the train and test data using read.table, and using the colClasses option.  Here a colClass of NULL
means read.table will skip that column.  This step uses the list of columns generated above.

Then the script reads in the ancillary data: id and activity

The next step binds the train and test set together into one data frame, using cbind() and rbind()

At the end of the last step, the column names are not friendly.  This step uses the names in the features.txt and the columns
variable (containing the names we want) to create R friendly column names.  These are then applied to the data frame.

The script next makes the activity column a factor variable with friendly names.

The final step creates the second tidy data set.  This data set is a "wide" data set with 180 rows (30 individuals with
six acitivities) and 66 columns of means.  For example, ID #1 had 95 observations of walking.  Each of the
66 variables for these 95 obseervations were summarized by one mean for each variable.  This step used the plyr package,
which breaks the data frame into sections, applies the function mean against each column, and reassembles
the data back together, all using one function call - very neat!

Finally the data were written to a file.

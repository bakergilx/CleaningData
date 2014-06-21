### Codebook for Cleaning Data Project

This codebook describes the variables used in the cleaning data project.  These variables
are described in the features_info.txt and features.txt which were part of the data
provided.

The data used in this project were generated from the accelerometer and gyroscope 3-axial 
raw signals from a Samsung smartphone.  (feature names with tAcc-X or Y or Z and \
tGyro-X or Y or Z).  These raw signals were further processed to obtain a total of 561
different measures.  For this project we required only those measures with mean or 
standard deviation (std) in the title.  There are 66 of these feature names.

Note: in general a feature name beginning with t indicate time data, and those names
beginning with f indicate frequency data.

The tidy data set thus contains the means of each of these 66 variables 
plus a identifier and an activity. There are 30 unique individual identifiers and six
unique activities ("Walking", "Walking Up", "Walking Down", "Sitting", "Standing", "Laying")
for a total of 180 combinations of identifier and activity - these combinations form the
rows of the tidy data set.  The columns are the means of the 66 variables selected from 
the provided data set.  These column variables are in the following order:

1. ID - individual identifier with integer values 1 - 30

2. Activity - factor variable with the following labels:
   ("Walking", "Walking Up", "Walking Down", "Sitting", "Standing", "Laying")
 
The following are the mean and standard deviation of the accelerometer data X, Y, and Z
coordinates for the individual.  The units are in g.  

3. tBodyAcc.mean.X
4. tBodyAcc.mean.Y
5. tBodyAcc.mean.Z
6. tBodyAcc.std.X
7. tBodyAcc.std.Y
8. tBodyAcc.std.Z

The following are the mean and standard deviation of the accelerometer data X, Y, and Z
coordinates due to gravity.  The units are in g.

9.  tGravityAcc.mean.X
10. tGravityAcc.mean.Y
11. tGravityAcc.mean.Z
12. tGravityAcc.std.X
13. tGravityAcc.std.Y
14. tGravityAcc.std.Z

The following set represent the mean and standard deviation of the change in acceleration -
referred to as jerk.

15. tBodyAccJerk.mean.X
16. tBodyAccJerk.mean.Y
17. tBodyAccJerk.mean.Z
18. tBodyAccJerk.std.X
19. tBodyAccJerk.std.Y
20. tBodyAccJerk.std.Z


The following set represent the mean and standard deviation of the X, Y, and Z gyroscope
data for the individual.  The units are radians per second.

21. tBodyGyro.mean.X
22. tBodyGyro.mean.Y
23. tBodyGyro.mean.Z
24. tBodyGyro.std.X
25. tBodyGyro.std.Y
26. tBodyGyro.std.Z

The following set represent the mean and standard deviation of the change in acceleration
of the gyroscope data.

27. tBodyGyroJerk.mean.X
28. tBodyGyroJerk.mean.Y
29. tBodyGyroJerk.mean.Z
30. tBodyGyroJerk.std.X
31. tBodyGyroJerk.std.Y
32. tBodyGyroJerk.std.Z

The following set represent the mean and standard deviation of the individual's
accelerometer data magnitude (euclidean norm)

33. tBodyAccMag.mean
34. tBodyAccMag.std

The following set represent the mean and standard deviation of gravity's
accelerometer data magnitude (euclidean norm)

35. tGravityAccMag.mean
36. tGravityAccMag.std

The following set represent the mean and standard deviation of the individual's
change in accelerometer data magnitude (euclidean norm)

37. tBodyAccJerkMag.mean
38. tBodyAccJerkMag.std

The following set represent the mean and standard deviation of the individual's
change in gyroscope data magnitude (euclidean norm)

39. tBodyGyroMag.mean
40. tBodyGyroMag.std

The following set represent the mean and standard deviation of the individual's
change in the acceleration of gyroscope data magnitude (euclidean norm)

41. tBodyGyroJerkMag.mean
42. tBodyGyroJerkMag.std


The following set represent the mean and standard deviation of the 
frequency components (FFT) of the X, Y, and Z accelerometer data.

43. fBodyAcc.mean.X
44. fBodyAcc.mean.Y
45. fBodyAcc.mean.Z
46. fBodyAcc.std.X
47. fBodyAcc.std.Y
48. fBodyAcc.std.Z

The following set represent the mean and standard deviation of the frequency components
of the change in acceleration in the X, Y, and Z directions.

49. fBodyAccJerk.mean.X
50. fBodyAccJerk.mean.Y
51. fBodyAccJerk.mean.Z
52. fBodyAccJerk.std.X
53. fBodyAccJerk.std.Y
54. fBodyAccJerk.std.Z


The following set represent the mean and standard deviation of the frequency components
of the gyroscope data in the X, Y, and Z directions.

55. fBodyGyro.mean.X
56. fBodyGyro.mean.Y
57. fBodyGyro.mean.Z
58. fBodyGyro.std.X
59. fBodyGyro.std.Y
60. fBodyGyro.std.Z

The following set represent the mean and standard deviation of the euclidean 
norm of the frequency components of the individual's accelerometer data.

61. fBodyAccMag.mean
62. fBodyAccMag.std

The following set represent the mean and standard deviation of the euclidean 
norm of the change in accelerometer data.

63. fBodyBodyAccJerkMag.mean
64. fBodyBodyAccJerkMag.std

The following set represent the mean and standard deviation of the 
euclidean norm of the frequency components of the gyroscopic data.

65. fBodyBodyGyroMag.mean
66. fBodyBodyGyroMag.std

The following set represent the mean and standard deviation of the 
euclidean norm of the change in frequency components of the gyroscopic data.

67. fBodyBodyGyroJerkMag.mean
68. fBodyBodyGyroJerkMag.std

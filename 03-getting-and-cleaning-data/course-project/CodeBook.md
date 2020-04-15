# Code book for Getting and Cleaning Data course project
This code book contains information on the `tidydata.txt` included in the repository. 

See the README.md file of this repository for background information on the source data and experiment where the `tidydata.txt` was generated from. 

The structure of the data set is described in the **About the Data** section,  variables are listed in the **About the Variables** section, and the transformations that were carried out to obtain the `tidydata.txt` from the source data are presented in the **About the Transformations** section.

# About the Data

The `tidydata.txt` file is a text file containing space-separated values. The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables. 

The data set contains 180 observations spread across 68 variables. 

# About the Variables 
## Identifiers
* `id`
* `activity`

## Measure variables

Each measure variable are normalized and bounded within -1,1. The measure variables for this data is separated into two categories:`Time domain signals` and `Frequency domain signals`. Each category is composed of data from an accelerometer and a gyrocsope which was used to obtain body, gravity, jerk signals, and their derivatives. This was done for each participant (`id`) and for each of the six activities (`activity`). For the purposes of this project, only the `Mean` and `StandardDeviation` of the signals were taken into consideration in creating the tidy data set. 


For each category,  Information on the method used to d

### Time domain signals

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ, where the prefix `t` is used to denote `time`, and `Acc` and `Gyro` is used to refer to `Acceleration` and `Gyroscope`. 

 `timeDomainimeDomainBodyAccelerometerelerometer.Mean.X`                                        
 `timeDomainimeDomainBodyAccelerometerelerometer.Mean.Y`                                        
 `timeDomainimeDomainBodyAccelerometerelerometer.Mean.Z`  
 
 [6] "timeDomainimeDomainBodyAccelerometerelerometer.StandardDeviation.X"                           
 [7] "timeDomainimeDomainBodyAccelerometerelerometer.StandardDeviation.Y"                           
 [8] "timeDomainimeDomainBodyAccelerometerelerometer.StandardDeviation.Z"                           
 [9] "timeDomainimeDomainGravityAccelerometerelerometer.Mean.X"                                     
[10] "timeDomainimeDomainGravityAccelerometerelerometer.Mean.Y"                                     
[11] "timeDomainimeDomainGravityAccelerometerelerometer.Mean.Z"                                     
[12] "timeDomainimeDomainGravityAccelerometerelerometer.StandardDeviation.X"                        
[13] "timeDomainimeDomainGravityAccelerometerelerometer.StandardDeviation.Y"                        
[14] "timeDomainimeDomainGravityAccelerometerelerometer.StandardDeviation.Z"                        
[15] "timeDomainimeDomainBodyAccelerometerelerometerJerk.Mean.X"                                    
[16] "timeDomainimeDomainBodyAccelerometerelerometerJerk.Mean.Y"                                    
[17] "timeDomainimeDomainBodyAccelerometerelerometerJerk.Mean.Z"                                    
[18] "timeDomainimeDomainBodyAccelerometerelerometerJerk.StandardDeviation.X"                       
[19] "timeDomainimeDomainBodyAccelerometerelerometerJerk.StandardDeviation.Y"                       
[20] "timeDomainimeDomainBodyAccelerometerelerometerJerk.StandardDeviation.Z"                       
[21] "timeDomainimeDomainBodyGyroscopescope.Mean.X"                                                 
[22] "timeDomainimeDomainBodyGyroscopescope.Mean.Y"                                                 
[23] "timeDomainimeDomainBodyGyroscopescope.Mean.Z"                                                 
[24] "timeDomainimeDomainBodyGyroscopescope.StandardDeviation.X"                                    
[25] "timeDomainimeDomainBodyGyroscopescope.StandardDeviation.Y"                                    
[26] "timeDomainimeDomainBodyGyroscopescope.StandardDeviation.Z"                                    
[27] "timeDomainimeDomainBodyGyroscopescopeJerk.Mean.X"                                             
[28] "timeDomainimeDomainBodyGyroscopescopeJerk.Mean.Y"                                             
[29] "timeDomainimeDomainBodyGyroscopescopeJerk.Mean.Z"                                             
[30] "timeDomainimeDomainBodyGyroscopescopeJerk.StandardDeviation.X"                                
[31] "timeDomainimeDomainBodyGyroscopescopeJerk.StandardDeviation.Y"                                
[32] "timeDomainimeDomainBodyGyroscopescopeJerk.StandardDeviation.Z"                                
[33] "timeDomainimeDomainBodyAccelerometerelerometerMagnitudenitude.Mean"                           
[34] "timeDomainimeDomainBodyAccelerometerelerometerMagnitudenitude.StandardDeviation"              
[35] "timeDomainimeDomainGravityAccelerometerelerometerMagnitudenitude.Mean"                        
[36] "timeDomainimeDomainGravityAccelerometerelerometerMagnitudenitude.StandardDeviation"           
[37] "timeDomainimeDomainBodyAccelerometerelerometerJerkMagnitudenitude.Mean"                       
[38] "timeDomainimeDomainBodyAccelerometerelerometerJerkMagnitudenitude.StandardDeviation"          
[39] "timeDomainimeDomainBodyGyroscopescopeMagnitudenitude.Mean"                                    
[40] "timeDomainimeDomainBodyGyroscopescopeMagnitudenitude.StandardDeviation"                       
[41] "timeDomainimeDomainBodyGyroscopescopeJerkMagnitudenitude.Mean"                                
[42] "timeDomainimeDomainBodyGyroscopescopeJerkMagnitudenitude.StandardDeviation"

### Frequency domain signal
[43] "frequencyDomainrequencyDomainBodyAccelerometerelerometer.Mean.X"                              
[44] "frequencyDomainrequencyDomainBodyAccelerometerelerometer.Mean.Y"                              
[45] "frequencyDomainrequencyDomainBodyAccelerometerelerometer.Mean.Z"                              
[46] "frequencyDomainrequencyDomainBodyAccelerometerelerometer.StandardDeviation.X"                 
[47] "frequencyDomainrequencyDomainBodyAccelerometerelerometer.StandardDeviation.Y"                 
[48] "frequencyDomainrequencyDomainBodyAccelerometerelerometer.StandardDeviation.Z"                 
[49] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.Mean.X"                          
[50] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.Mean.Y"                          
[51] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.Mean.Z"                          
[52] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.StandardDeviation.X"             
[53] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.StandardDeviation.Y"             
[54] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.StandardDeviation.Z"             
[55] "frequencyDomainrequencyDomainBodyGyroscopescope.Mean.X"                                       
[56] "frequencyDomainrequencyDomainBodyGyroscopescope.Mean.Y"                                       
[57] "frequencyDomainrequencyDomainBodyGyroscopescope.Mean.Z"                                       
[58] "frequencyDomainrequencyDomainBodyGyroscopescope.StandardDeviation.X"                          
[59] "frequencyDomainrequencyDomainBodyGyroscopescope.StandardDeviation.Y"                          
[60] "frequencyDomainrequencyDomainBodyGyroscopescope.StandardDeviation.Z"                          
[61] "frequencyDomainrequencyDomainBodyAccelerometerelerometerMagnitudenitude.Mean"                 
[62] "frequencyDomainrequencyDomainBodyAccelerometerelerometerMagnitudenitude.StandardDeviation"    
[63] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerkMagnitudenitude.Mean"             
[64] "frequencyDomainrequencyDomainBodyAccelerometerelerometerJerkMagnitudenitude.StandardDeviation"
[65] "frequencyDomainrequencyDomainBodyGyroscopescopeMagnitudenitude.Mean"                          
[66] "frequencyDomainrequencyDomainBodyGyroscopescopeMagnitudenitude.StandardDeviation"             
[67] "frequencyDomainrequencyDomainBodyGyroscopescopeJerkMagnitudenitude.Mean"                      
[68] "frequencyDomainrequencyDomainBodyGyroscopescopeJerkMagnitudenitude.StandardDeviation"     



For each experiment participant and specific activity, 66 measurements were taken and recorded. 




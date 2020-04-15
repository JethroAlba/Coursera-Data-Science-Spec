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

Time domain signals (prefixed by `timeDomainimeDomain`) are signals captured using an accelerometer and a gyroscope at a constant rate of 50 Hz. Thse were then filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Subsequently, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. These steps resulted to the following variables:

* Average time domain body acceleration in X, Y and Z directions:
   `timeDomainimeDomainBodyAccelerometerelerometer.Mean.X`                                        
   `timeDomainimeDomainBodyAccelerometerelerometer.Mean.Y`                                        
   `timeDomainimeDomainBodyAccelerometerelerometer.Mean.Z`  

* Standard deviation of time domain body acceleration in X, Y, and Z directions:
`timeDomainimeDomainBodyAccelerometerelerometer.StandardDeviation.X`
`timeDomainimeDomainBodyAccelerometerelerometer.StandardDeviation.Y`
`timeDomainimeDomainBodyAccelerometerelerometer.StandardDeviation.Z`

* Average time domain gravity acceleration in X, Y and Z directions:
`timeDomainimeDomainGravityAccelerometerelerometer.Mean.X`
`timeDomainimeDomainGravityAccelerometerelerometer.Mean.Y`
`timeDomainimeDomainGravityAccelerometerelerometer.Mean.Z`

* Standard deviation of time domain gravity acceleration in X, Y, and Z directions:
`timeDomainimeDomainGravityAccelerometerelerometer.StandardDeviation.X`
`timeDomainimeDomainGravityAccelerometerelerometer.StandardDeviation.Y`
`timeDomainimeDomainGravityAccelerometerelerometer.StandardDeviation.Z`

* Average time domain of body acceleration jerk in X, Y and Z directions:
`timeDomainimeDomainBodyAccelerometerelerometerJerk.Mean.X`
`timeDomainimeDomainBodyAccelerometerelerometerJerk.Mean.Y`
`timeDomainimeDomainBodyAccelerometerelerometerJerk.Mean.Z`

* Standard deviation of time domain body acceleration jerk in X, Y, and Z directions:
`timeDomainimeDomainBodyAccelerometerelerometerJerk.StandardDeviation.X`
`timeDomainimeDomainBodyAccelerometerelerometerJerk.StandardDeviation.Y`
`timeDomainimeDomainBodyAccelerometerelerometerJerk.StandardDeviation.Z`

* Average time domain of body gyroscope in X, Y and Z directions:
`timeDomainimeDomainBodyGyroscopescope.Mean.X`
`timeDomainimeDomainBodyGyroscopescope.Mean.Y`
`timeDomainimeDomainBodyGyroscopescope.Mean.Z`

* Standard deviation of time domain body gyroscope in X, Y, and Z directions:
`timeDomainimeDomainBodyGyroscopescope.StandardDeviation.X`
`timeDomainimeDomainBodyGyroscopescope.StandardDeviation.Y`
`timeDomainimeDomainBodyGyroscopescope.StandardDeviation.Z`

* Average time domain of body gyroscope  jerk in X, Y and Z directions:
`timeDomainimeDomainBodyGyroscopescopeJerk.Mean.X`
`timeDomainimeDomainBodyGyroscopescopeJerk.Mean.Y`
`timeDomainimeDomainBodyGyroscopescopeJerk.Mean.Z`

* Standard deviation of time domain body gyroscope jerk in X, Y, and Z directions:
`timeDomainimeDomainBodyGyroscopescopeJerk.StandardDeviation.X`
`timeDomainimeDomainBodyGyroscopescopeJerk.StandardDeviation.Y`
`timeDomainimeDomainBodyGyroscopescopeJerk.StandardDeviation.Z`

* Average time domain of body acceleration magnitude and jerk magnitude
`timeDomainimeDomainBodyAccelerometerelerometerMagnitudenitude.Mean`
`timeDomainimeDomainBodyAccelerometerelerometerJerkMagnitudenitude.Mean`

* Average time domain of gravity acceleration magnitude 
`timeDomainimeDomainGravityAccelerometerelerometerMagnitudenitude.Mean`

* Average time domain of body gyrocsope magnitude and jerk magnitude
`timeDomainimeDomainBodyGyroscopescopeMagnitudenitude.Mean`
`timeDomainimeDomainBodyGyroscopescopeJerkMagnitudenitude.Mean`

* Standard deviation of time domain of body acceleration magnitude and jerk magnitude
`timeDomainimeDomainBodyAccelerometerelerometerJerkMagnitudenitude.StandardDeviation`
`timeDomainimeDomainBodyAccelerometerelerometerMagnitudenitude.StandardDeviation`

* Average time domain of gravity acceleration magnitude 
`timeDomainimeDomainGravityAccelerometerelerometerMagnitudenitude.StandardDeviation`

* Average time domain of body gyroscope magnitude and jerk magnitude
`timeDomainimeDomainBodyGyroscopescopeMagnitudenitude.StandardDeviation`
`timeDomainimeDomainBodyGyroscopescopeJerkMagnitudenitude.StandardDeviation`


### Frequency domain signal

The frequency domain signal was obtained by applying a Fast Fourier Transform (FFT) to some of the time domain signals producing the following variables:

`frequencyDomainrequencyDomainBodyAccelerometerelerometer.Mean.X`
`frequencyDomainrequencyDomainBodyAccelerometerelerometer.Mean.Y`
`frequencyDomainrequencyDomainBodyAccelerometerelerometer.Mean.Z`
`frequencyDomainrequencyDomainBodyAccelerometerelerometer.StandardDeviation.X`
`frequencyDomainrequencyDomainBodyAccelerometerelerometer.StandardDeviation.Y`
`frequencyDomainrequencyDomainBodyAccelerometerelerometer.StandardDeviation.Z`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.Mean.X`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.Mean.Y`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.Mean.Z`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.StandardDeviation.X`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.StandardDeviation.Y`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerk.StandardDeviation.Z`
`frequencyDomainrequencyDomainBodyGyroscopescope.Mean.X`
`frequencyDomainrequencyDomainBodyGyroscopescope.Mean.Y`
`frequencyDomainrequencyDomainBodyGyroscopescope.Mean.Z`
`frequencyDomainrequencyDomainBodyGyroscopescope.StandardDeviation.X`
`frequencyDomainrequencyDomainBodyGyroscopescope.StandardDeviation.Y`
`frequencyDomainrequencyDomainBodyGyroscopescope.StandardDeviation.Z`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerMagnitudenitude.Mean`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerMagnitudenitude.StandardDeviation`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerkMagnitudenitude.Mean`
`frequencyDomainrequencyDomainBodyAccelerometerelerometerJerkMagnitudenitude.StandardDeviation`
`frequencyDomainrequencyDomainBodyGyroscopescopeMagnitudenitude.Mean`
`frequencyDomainrequencyDomainBodyGyroscopescopeMagnitudenitude.StandardDeviation`
`frequencyDomainrequencyDomainBodyGyroscopescopeJerkMagnitudenitude.Mean`
`frequencyDomainrequencyDomainBodyGyroscopescopeJerkMagnitudenitude.StandardDeviation`


For each experiment participant and specific activity, 66 measurements were taken and recorded. 




# Code book for Getting and Cleaning Data course project
This code book contains information on the `tidydata.txt` included in the repository. 

See the README.md file of this repository for background information on the source data and experiment where the `tidydata.txt` was generated from. 

The structure of the data set is described in the **About the Data** section,  variables are listed in the **About the Variables** section, and the transformations that were carried out to obtain the `tidydata.txt` from the source data are presented in the **About the Transformations** section.

# About the Data

The `tidydata.txt` file is a text file containing space-separated values. The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables. 

The data set contains 180 observations spread across 68 variables. 

# About the Variables 
## Identifiers
* `id`, integer, subject identifier with range from 1 to 30.
* `activity`, name of the activity the subject performed. The activities include:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

## Measure variables

Each measure variable are normalized and bounded within -1,1. The measure variables for this data is separated into two categories:`Time domain signals` and `Frequency domain signals`. Each category is composed of data from an accelerometer and a gyrocsope which was used to obtain body, gravity, jerk signals, and their derivatives. This was done for each participant (`id`) and for each of the six activities (`activity`). For the purposes of this project, only the `Mean` and `StandardDeviation` of the signals were taken into consideration in creating the tidy data set. 

Each of the 66 measure variables noted here are of `numeric` classes

### Time domain signals

Time domain signals (prefixed by `timeDomainimeDomain`) are signals captured using an accelerometer and a gyroscope at a constant rate of 50 Hz. Thse were then filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Subsequently, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. These steps resulted to the following variables:

* Average time domain body acceleration in X, Y and Z directions:
  - `timeDomainBodyAccelerometer-Mean-X`
  - `timeDomainBodyAccelerometer-Mean-Y`
  - `timeDomainBodyAccelerometer-Mean-Z`

* Standard deviation of time domain body acceleration in X, Y, and Z directions:
  - `timeDomainBodyAccelerometer-StandardDeviation-X`
  - `timeDomainBodyAccelerometer-StandardDeviation-Y`
  - `timeDomainBodyAccelerometer-StandardDeviation-Z`

* Average time domain gravity acceleration in X, Y and Z directions:
  - `timeDomainGravityAccelerometer-Mean-X`
  - `timeDomainGravityAccelerometer-Mean-Y`
  - `timeDomainGravityAccelerometer-Mean-Z`

* Standard deviation of time domain gravity acceleration in X, Y, and Z directions:
  - `timeDomainGravityAccelerometer-StandardDeviation-X`
  - `timeDomainGravityAccelerometer-StandardDeviation-Y`
  - `timeDomainGravityAccelerometer-StandardDeviation-Z`

* Average time domain of body acceleration jerk in X, Y and Z directions:
  - `timeDomainBodyAccelerometerJerk-Mean-X`
  - `timeDomainBodyAccelerometerJerk-Mean-Y`
  - `timeDomainBodyAccelerometerJerk-Mean-Z`

* Standard deviation of time domain body acceleration jerk in X, Y, and Z directions:
  - `timeDomainBodyAccelerometerJerk-StandardDeviation-X`
  - `timeDomainBodyAccelerometerJerk-StandardDeviation-Y`
  - `timeDomainBodyAccelerometerJerk-StandardDeviation-Z`

* Average time domain of body gyroscope in X, Y and Z directions:
  - `timeDomainBodyGyroscope-Mean-X`
  - `timeDomainBodyGyroscope-Mean-Y`
  - `timeDomainBodyGyroscope-Mean-Z`

* Standard deviation of time domain body gyroscope in X, Y, and Z directions:
  - `timeDomainBodyGyroscope-StandardDeviation-X`
  - `timeDomainBodyGyroscope-StandardDeviation-Y`
  - `timeDomainBodyGyroscope-StandardDeviation-Z`

* Average time domain of body gyroscope  jerk in X, Y and Z directions:
  - `timeDomainBodyGyroscopeJerk-Mean-X`
  - `timeDomainBodyGyroscopeJerk-Mean-Y`
  - `timeDomainBodyGyroscopeJerk-Mean-Z`

* Standard deviation of time domain body gyroscope jerk in X, Y, and Z directions:
  - `timeDomainBodyGyroscopeJerk-StandardDeviation-X`
  - `timeDomainBodyGyroscopeJerk-StandardDeviation-Y`
  - `timeDomainBodyGyroscopeJerk-StandardDeviation-Z`

* Average time domain of body acceleration magnitude and jerk magnitude

  - `timeDomainBodyAccelerometerJerkMagnitude-Mean`
  - `timeDomainBodyAccelerometerMagnitude-Mean`

* Average time domain of gravity acceleration magnitude 
  - `timeDomainBodyAccelerometerMagnitude-StandardDeviation`

* Average time domain of body gyrocsope magnitude and jerk magnitude
  - `timeDomainBodyGyroscopeMagnitude-Mean`
  - `timeDomainBodyGyroscopeJerkMagnitude-Mean`

* Standard deviation of time domain of body acceleration magnitude and jerk magnitude
  - `timeDomainBodyGyroscopeMagnitude-StandardDeviation`
  - `timeDomainBodyGyroscopeJerkMagnitude-StandardDeviation`

* Average time domain of gravity acceleration magnitude 
  - `timeDomainGravityAccelerometerMagnitude-Mean`

* Standard deviation time domain of body gyroscope magnitude and jerk magnitude
  - `timeDomainGravityAccelerometerMagnitude-StandardDeviation`
  - `timeDomainBodyAccelerometerJerkMagnitude-StandardDeviation`


### Frequency domain signal

The frequency domain signal was obtained by applying a Fast Fourier Transform (FFT) to some of the time domain signals producing the following variables:

* Average frequency domain body acceleration in X, Y and Z directions:
- `frequencyDomainBodyAccelerometer-Mean-X`
- `frequencyDomainBodyAccelerometer-Mean-Y`
- `frequencyDomainBodyAccelerometer-Mean-Z`

* Standard deviation of frequency domain body acceleration in X, Y, and Z directions:
- `frequencyDomainBodyAccelerometer-StandardDeviation-X`
- `frequencyDomainBodyAccelerometer-StandardDeviation-Y`
- `frequencyDomainBodyAccelerometer-StandardDeviation-Z`

* Average frequency domain of body acceleration jerk in X, Y and Z directions:
- `frequencyDomainBodyAccelerometerJerk-Mean-X`
- `frequencyDomainBodyAccelerometerJerk-Mean-Y`
- `frequencyDomainBodyAccelerometerJerk-Mean-Z`

* Standard deviation of frequency domain body acceleration jerk in X, Y, and Z directions:
- `frequencyDomainBodyAccelerometerJerk-StandardDeviation-X`
- `frequencyDomainBodyAccelerometerJerk-StandardDeviation-Y`
- `frequencyDomainBodyAccelerometerJerk-StandardDeviation-Z`

* Average frequency domain of body gyroscope in X, Y and Z directions:
- `frequencyDomainBodyGyroscope-Mean-X`
- `frequencyDomainBodyGyroscope-Mean-Y`
- `frequencyDomainBodyGyroscope-Mean-Z`

* Standard deviation of frequency domain body gyroscope in X, Y, and Z directions:
- `frequencyDomainBodyGyroscope-StandardDeviation-X`
- `frequencyDomainBodyGyroscope-StandardDeviation-Y`
- `frequencyDomainBodyGyroscope-StandardDeviation-Z`

* Average frequency domain of body acceleration magnitude and jerk magnitude
- `frequencyDomainBodyAccelerometerMagnitude-Mean`
- `frequencyDomainBodyAccelerometerJerkMagnitude-Mean`

* Standard deviation of frequency domain of body acceleration magnitude and jerk magnitude
- `frequencyDomainBodyAccelerometerMagnitude-StandardDeviation`
- `frequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation`

* Average frequency domain of body gyroscope magnitude and jerk magnitude
- `frequencyDomainBodyGyroscopeMagnitude-Mean`
- `frequencyDomainBodyGyroscopeJerkMagnitude-Mean`

* Standard deviation frequency domain of body gyroscope magnitude and jerk magnitude
- `frequencyDomainBodyGyroscopeMagnitude-StandardDeviation`
- `frequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation`


For each experiment participant and specific activity, 66 measurements were taken and recorded. 

# About the Transformations


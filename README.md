# Bantuan Sosial Detector (BSD) - BSDTeam Bangkit 2021

## Project Overview
Indonesian Government data shows that 82.8% of survey respondents stated that this Covid-19 pandemic has severely affected their economy. The government then intervened by providing Bantuan Sosial (BanSos) to the community. However, the reality shows that the distribution system is still not good, with data that is not transparent and the BanSos distribution of BanSos is not right on target. Here, we come up with BanSos Detector, a project to make an android application that can be used to monitor the distribution of the Bantuan Sosial. BanSos Detector will also implement machine learning to determine the appropriate recipients of Bantuan Sosial.

## Project Repository
[Android](https://github.com/fikrim2204/BantuanSosialDetector) \
[Machine Learning](https://github.com/verm024/bsd-capstone) \
[Cloud](https://github.com/ariidjs/capstone)

## Our Team - CAP0152
1. [A1321655-Fikri Maulana](https://github.com/fikrim2204)
2. [A1321661-Rizkhan Hadi](https://github.com/ariidjs)
3. [M0080829-Daniel Suranta Sitepu](https://github.com/danielsitepu36)
4. [M0080833-Muhammad Naufal Arkan Rafii](https://github.com/verm024)
5. [C1321652-Anjelin Andri](https://github.com/anjelinandri)
6. [C1321657-Vienne Anggelica Kurnia](https://github.com/vienneanggelica)

## Steps to use
### Android:
1. Clone this repository and run on Android Studio, or download the APK
2. Open the application, sign up or login with Google.
3. To request Bantuan Sosial, please fill the form.
4. See the result.
5. If you are accepted, the app will show the delivery tracker.
6. Admin can use admin app to update the status delivery.

### Machine Learning:
1. Clone this repository
2. If you just want to test the code, then you can open the code and run all the cell through Jupyter Notebook/Google Colab
3. If you want to deploy the model, run the model in the SavedModel folder using [TFServe](https://www.tensorflow.org/tfx/guide/serving)
4. For the deployed version, you can access and hit the model API via your External IP Address
5. The POST request API should send user's age, monthly income, dependents, occupation, and the acceptance status in a JSON format.
6. The response would be user's probability to accept Bantuan Sosial (response<0.5 is rejected, response>=0.5 is accepted)

## How it works
### Android:
1. Create new project in android studio
2. Add this libraries to your project
   * Retrofit
   * Coroutine
   * Firebase
   * Kotlin injection
   * Navigation Component

3. Add this plugin
   * id 'com.google.gms.google-services'
   * id 'androidx.navigation.safeargs.kotlin'

4. If you want to use navigation component with safe args, add this to build.gradle(project)
   * classpath "androidx.navigation:navigation-safe-args-gradle-plugin:{latest_version}"

5. Firebase required if you want to login with google account
6. Create Activity or Fragment, and design ui in res/layout/
7. Working on repository, create model response,remote data source, api service, NetworkBoundResource and project repository
8. implement koin, create module file and class MyApplication
9. Working on navigation
10. Build the application

### Machine Learning:
1. Import dataset from spreadsheet URL as csv 
2. Split the data into training, validation, and test data
3. Convert the data to input pipeline using tf.data
4. Extract feature columns
5. Create the architecture of the model
6. Train, validate, and test the model
7. Export the model to TFX format
8. Deploy and test the deployed model

### Cloud:
* On Compute Engine
   1. Create VPS

* On VPS (ML)
   1. Download Machine Learning model from github
   2. Install Tensorflow Model Server
   3. Create Rest-API from Machine Learning model

* On VSCode 
   1. Create Rest API on Lumen PHP
   2. Push to github

* On VPS (API)
   1. Pull data from github to Deploy Rest API on VPS
   2. Download lumen 
   3. Install lumen
   4. Download composer
   5. Configure lumen
   6. Configure nginx for lumen web servers
   7. Configure lumen endpoint for android

## References
1. [Android Developers](https://developer.android.com/)
2. [Dicoding: Menjadi Android Developer Expert](https://www.dicoding.com/academies/165)
3. [Dicoding: Belajar Android Jetpack Pro](https://www.dicoding.com/academies/129)
4. [Firebase: Google Sign-In for Android](https://developers.google.com/identity/sign-in/android/sign-in)
5. [Koin](https://insert-koin.io/docs/reference/koin-android/start)
6. [Retrofit](https://square.github.io/retrofit/)
7. [TensorFlow: Data and Deployment-Tensorflow Datasets Week 2](https://github.com/lmoroney/dlaicourse/blob/master/TensorFlow%20Deployment/Course%203%20-%20TensorFlow%20Datasets/Week%202/Examples/feature_columns.ipynb)
8. [TensorFlow: Data and Deployment-Tensorflow Serving Week 1](https://github.com/lmoroney/dlaicourse/blob/master/TensorFlow%20Deployment/Course%204%20-%20TensorFlow%20Serving/Week%201/Examples/tfserving_hello_world.ipynb)
9. [10 Minutes to Deploying a Deep Learning Model on Google Cloud Platform](https://towardsdatascience.com/10-minutes-to-deploying-a-deep-learning-model-on-google-cloud-platform-13fa56a266ee)
10. [Google Cloud Platform Custom Model Upload , REST API Inference and Model Version Monitoring](https://medium.com/analytics-vidhya/google-cloud-platform-custom-model-upload-rest-api-inference-and-model-version-monitoring-80216e69fbc2)
11. [Cloud Engineering with Imre - YouTube](https://www.youtube.com/c/ImreNagi)

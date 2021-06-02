# Bantuan Sosial Detector (BSD) - BSDTeam Bangkit 2021

## Project Overview
Indonesian Government data shows that 82.8% of survey respondents stated that this Covid-19 pandemic has severely affected their economy. The government then intervened by providing Bantuan Sosial (BanSos) to the community. However, the reality shows that the distribution system is still not good, with data that is not transparent and the BanSos distribution of BanSos is not right on target. Here, we come up with BanSos Detector, a project to make an android application that can be used to monitor the distribution of the Bantuan Sosial. BanSos Detector will also implement machine learning to determine the appropriate recipients of Bantuan Sosial.

## Project Repository
[Android](https://github.com/fikrim2204/BantuanSosialDetector) \
[Machine Learning](https://github.com/verm024/bsd-capstone)

## Our Team
1. [A1321655-Fikri Maulana](https://github.com/fikrim2204)
2. [A1321661-Rizkhan Hadi](https://github.com/ariidjs)
3. [M0080829-Daniel Suranta Sitepu](https://github.com/danielsitepu36)
4. [M0080833-Muhammad Naufal Arkan Rafii](https://github.com/verm024)
5. [C1321652-Anjelin Andri](https://github.com/anjelinandri)
6. [C1321657-Vienne Anggelica Kurnia](https://github.com/vienneanggelica)

## Steps to use
Android:
1. Clone this repository and run on Android Studio, or
2. Download the apk [here]()
3. Open the application, sign up or login with Google.
4. To request Bantuan Sosial, please fill the form.
5. See the result.
6. If you are accepted, the app will show the delivery tracker.
7. Admin can use admin app to update the status delivery.

Machine Learning:
1. Clone this repository
2. If you just want to test the code, then you can open the code and run all the cell through Jupyter Notebook/Google Colab
3. If you want to deploy the model, run the model in the SavedModel folder using [TFServe](https://www.tensorflow.org/tfx/guide/serving)
4. For the deployed version, you can access and hit the model API via your External IP Address
5. The POST request API should send user's age, monthly income, dependents, occupation, and the acceptance status in a JSON format.
6. The response would be user's probability to accept Bantuan Sosial (response<0.5 is rejected, response>=0.5 is accepted)

## How it works
Machine Learning:
1. Import dataset from spreadsheet URL as csv 
2. Split the data into training, validation, and test data
3. Convert the data to input pipeline using tf.data
4. Extract feature columns
5. Create the architecture of the model
6. Train, validate, and test the model
7. Export the model to TFX format
8. Deploy and test the deployed model

## References
1. [TensorFlow: Data and Deployment-Tensorflow Datasets Week 2](https://github.com/lmoroney/dlaicourse/blob/master/TensorFlow%20Deployment/Course%203%20-%20TensorFlow%20Datasets/Week%202/Examples/feature_columns.ipynb)
2. [TensorFlow: Data and Deployment-Tensorflow Serving Week 1](https://github.com/lmoroney/dlaicourse/blob/master/TensorFlow%20Deployment/Course%204%20-%20TensorFlow%20Serving/Week%201/Examples/tfserving_hello_world.ipynb)
3. [10 Minutes to Deploying a Deep Learning Model on Google Cloud Platform](https://towardsdatascience.com/10-minutes-to-deploying-a-deep-learning-model-on-google-cloud-platform-13fa56a266ee)
4. [Google Cloud Platform Custom Model Upload , REST API Inference and Model Version Monitoring](https://medium.com/analytics-vidhya/google-cloud-platform-custom-model-upload-rest-api-inference-and-model-version-monitoring-80216e69fbc2)
5. [Cloud Engineering with Imre - YouTube](https://www.youtube.com/c/ImreNagi)

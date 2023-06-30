# my_google_ads_example

The simplest way to add Google ads to your project. 

Besides code in dart files, those two files should be updated: 
## build.gradle
 ###   Set minSdkVersion to 21
             defaultConfig {
                   // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
                   applicationId "com.example.my_google_ads_example"
                  // You can update the following values to match your application needs.
                  // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
                  minSdkVersion 21
                  targetSdkVersion flutter.targetSdkVersion
                  versionCode flutterVersionCode.toInteger()
                  versionName flutterVersionName
               }
###   Replace GradleException with FileNotFoundException
## AndroidManifest.xml add app_id
         <meta-data android:name="com.google.android.gms.ads.APPLICATION_ID" 
                        android:value="ca-app-pub-3940256099942544~3347511713" />
  All ids are good only for testing. You should replace them with real IDs before you publish your app to store(s).  

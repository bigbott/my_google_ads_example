import 'package:flutter/material.dart';
import 'package:my_google_ads_example/ad_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  adHelper.initGoogleMobileAds();
  adHelper.createRewardedAd();
  adHelper.createRewardedInterstitialAd();
  adHelper.createInterstitialAd();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      adHelper.showRewardedAd();
                    },
                    child: const Text('Show rewarded ad')),
                    const SizedBox(height: 50,),
                     OutlinedButton(
                    onPressed: () {
                      adHelper.showRewardedInterstitialAd();
                    },
                    child: const Text('Show rewarded interstitial ad')),
                    const SizedBox(height: 50,),
                     OutlinedButton(
                    onPressed: () {
                      adHelper.showInterstitialAd();
                    },
                    child: const Text('Show interstitial ad')),
              ],
            )),
      ),
    );
  }
}

import 'dart:io';
import 'dart:math';

import 'package:applovin_max/applovin_max.dart';

int _ClickToShowAdsInter = 2;

bool isReadyInter = false;

final String _interstitial_ad_unit_id =
    Platform.isAndroid ? "bd618770abaedf4b" : "bd618770abaedf4b";
final String _banner_ad_unit_id =
    Platform.isAndroid ? "24cef332522b02f0" : "24cef332522b02f0";

var _interstitialRetryAttempt = 0;

void initializeInterstitialAds() {
  AppLovinMAX.setInterstitialListener(InterstitialListener(
    onAdLoadedCallback: (ad) {
      // Interstitial ad is ready to be shown. AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id) will now return 'true'
      print('Interstitial ad loaded from ' + ad.networkName);

      // Reset retry attempt
      _interstitialRetryAttempt = 0;
    },
    onAdLoadFailedCallback: (adUnitId, error) {
      // Interstitial ad failed to load
      // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
      _interstitialRetryAttempt = _interstitialRetryAttempt + 1;

      int retryDelay = pow(2, min(6, _interstitialRetryAttempt)).toInt();

      print('Interstitial ad failed to load with code ' +
          error.code.toString() +
          ' - retrying in ' +
          retryDelay.toString() +
          's');

      Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
        AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
      });
    },
    onAdDisplayedCallback: (ad) {
      initializeInterstitialAds();
    },
    onAdDisplayFailedCallback: (ad, error) {
      initializeInterstitialAds();
    },
    onAdClickedCallback: (ad) {},
    onAdHiddenCallback: (ad) {
      initializeInterstitialAds();
    },
  ));

  // Load the first interstitial
  AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
}

void initializeBannerAds() {
  // Banners are automatically sized to 320x50 on phones and 728x90 on tablets
  AppLovinMAX.createBanner(_banner_ad_unit_id, AdViewPosition.topRight);
  AppLovinMAX.showBanner(_banner_ad_unit_id);
}

void showInterstitial() async {
  if (_ClickToShowAdsInter >= 2) {
    isReadyInter =
        (await AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id))!;
    if (isReadyInter) {
      _ClickToShowAdsInter = 0;
      AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
    } else {
      initializeInterstitialAds();
    }
  } else {
    _ClickToShowAdsInter++;
  }
}

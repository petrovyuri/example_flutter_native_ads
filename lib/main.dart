import 'package:flutter/material.dart';
import 'package:native_ads/native_ad_param.dart';
import 'package:native_ads/native_ad_view.dart';
import 'package:native_ads/native_ads.dart';

void main() {
  NativeAds.initialize();
  runApp(MaterialApp(
    home: Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Text("Item 1"),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Container(
            height: 300,
            child: Text("Item 1"),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          NativeAd(),
          Container(
            height: 300,
            child: Text("Item 1"),
            decoration: BoxDecoration(color: Colors.grey),
          )
        ],
      ),
    ),
  ));
}

class NativeAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: NativeAdView(
            androidParam: AndroidParam()
              ..placementId = "ca-app-pub-3940256099942544/2247696110"
              ..packageName = "com.pym.flutter_native"
              ..layoutName = "ad_banner"
              ..attributionText = "AD"));
  }
}

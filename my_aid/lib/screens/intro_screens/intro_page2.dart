import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore: use_key_in_widget_constructors
class IntroPage2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network('https://lottie.host/490915eb-ef67-4e4a-be8e-cf97fd7e819d/JuP7sVng8Z.json'),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Lottie animation with padding
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Lottie.network('https://lottie.host/f98775c8-63fa-4a77-bc69-07f288f7fd3f/t7VaGKpmRY.json'),
            ),
          ),
          // Space for text
          const Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'Your text goes here',
                style: TextStyle(fontWeight: FontWeight.bold), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}

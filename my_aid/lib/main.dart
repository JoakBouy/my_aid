import 'package:flutter/material.dart';
import 'package:my_aid/onboarding.dart';
import 'package:my_aid/layout_data.dart';

void main() {
  runApp(
    Builder(
      builder: (context) {
        return LayoutData(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const MyApp(),
        );
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingPage(),
    );
  }
}
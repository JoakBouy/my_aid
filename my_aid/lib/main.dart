import 'package:flutter/material.dart';
import 'package:my_aid/landing_page.dart';
import 'package:my_aid/screens/booking_page.dart';
import 'package:my_aid/screens/welcome_page.dart';
import 'package:my_aid/screens/ResetPassword.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My AID App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      routes: {
        '/landing': (context) => const LandingPage(),
        '/welcome': (context) => const WelcomePage(),
        '/forgot_password': (context) => const ForgotPassword(),
        '/reset': (context) => const Resetpassword(),
        
      } 
    );
  }
}

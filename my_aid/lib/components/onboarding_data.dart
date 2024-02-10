import 'package:lottie/lottie.dart';
import 'onboardingInfo.dart';

class OnboardingData {
  List<OnboardingInfo> items = [
    OnboardingInfo(
      title: "Find Healthcare Easily",
      description: "Locate healthcare providers in your area and book appointments with ease",
      image: Lottie.network('https://lottie.host/c7496068-143b-480c-833f-930842325535/gAv0Wq1wVi.json'),
    ),
    OnboardingInfo(
      title: "Access Medical Information",
      description: "Get reliable and up-to-date health information at your fingertips",
      image: Lottie.network('https://lottie.host/fcdedcfc-d4b9-430b-8bc2-11a55a5cd02f/gPSVXzw0aK.json'),
    ),
    OnboardingInfo(
      title: "Connect with Professionals",
      description: "Communicate with qualified medical professionals for advice and virtual consultations",
      image: Lottie.network('https://lottie.host/dcccce98-3f6a-4b73-a032-ada85046e05a/ZEnUCvIfkW.json'),
    ),
  ];
}

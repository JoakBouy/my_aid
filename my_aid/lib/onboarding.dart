import 'package:flutter/material.dart';
import 'package:my_aid/Components/color.dart';
import 'package:my_aid/Components/onboarding_data.dart';
import 'package:my_aid/screens/Welcome/welcome_page.dart';
import 'package:my_aid/responsive.dart'; 

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingData();
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
        body: Column(
          children: [
            body(),
            buildDots(),
            button(),
          ],
        ),
      ),
      desktop: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: body(),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDots(),
                        const SizedBox(height: 20),
                        button(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Body
  Widget body(){
    return Expanded(
      child: Center(
        child: PageView.builder(
            onPageChanged: (value){
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: controller.items.length,
            itemBuilder: (context,index){
             return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   //Images
                   controller.items[currentIndex].image,

                   const SizedBox(height: 15),
                   //Titles
                   Text(controller.items[currentIndex].title,
                     style: const TextStyle(fontSize: 25,color: primaryColor,fontWeight: FontWeight.bold),
                     textAlign: TextAlign.center,),

                   //Description
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25),
                     child: Text(controller.items[currentIndex].description,
                       style: const TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
                   ),

                 ],
               ),
             );
        }),
      ),
    );
  }

  //Dots
  Widget buildDots(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(controller.items.length, (index) => AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration:   BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: currentIndex == index? primaryColor : Colors.grey,
          ),
          height: 7,
          width: currentIndex == index? 30 : 7,
          duration: const Duration(milliseconds: 700))),
    );
  }

  //Button
  Widget button(){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width *.9,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: primaryColor
      ),

      child: TextButton(
        onPressed: (){
          setState(() {
            if (currentIndex != controller.items.length -1) {
              currentIndex++;
            } else {
              // Navigate to WelcomePage using Builder workaround
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Builder(builder: (context) => const WelcomeScreen())),
              );
            }
          });
        },
        child: Text(currentIndex == controller.items.length -1? "Get started" : "Continue",
          style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
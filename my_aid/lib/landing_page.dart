import 'package:flutter/material.dart';
import 'package:my_aid/screens/intro_screens/intro_page1.dart';
import 'package:my_aid/screens/intro_screens/intro_page2.dart';
import 'package:my_aid/screens/intro_screens/intro_page3.dart';
import 'package:my_aid/screens/welcome_page.dart'; 
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // page view controller
  PageController _controller = PageController();

  // keep track if we are at the last page or not
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // page view
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                _isLastPage = page == 2;
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          // dot indicators
          Padding(
            padding: const EdgeInsets.only(bottom: 40), // Increase bottom padding
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // skip button
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('Skip'),
                  ),
                  // dot indicators
                  SmoothPageIndicator(controller: _controller, count: 3, effect: const WormEffect()),
                  // next button
                  _isLastPage ? GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()), // Navigate to WelcomePage
                      );
                    },
                    child: Text('Get Started'),
                  ) :
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn
                      );
                    },
                    child: Text('Next'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

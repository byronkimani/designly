import 'package:designly/business_logic/router/routes.dart';
import 'package:designly/presentation/core/slider_model.dart';
import 'package:designly/presentation/features/onboarding/widget/slider_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentIndex = 0;
  List<SliderModel> slides = <SliderModel>[];

  final PageController controller = PageController();

  @override
  void initState() {
    slides = onboardingSlides;
    super.initState();
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: slides.length,
                onPageChanged: (int value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return SliderWidget(
                    image: slides[index].image,
                    title: slides[index].title,
                    description: slides[index].description,
                  );
                },
              ),
            ),
            // Container created for dots
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  slides.length,
                  (int index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(40),
              width: double.infinity,

              // Button
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context)
                      .colorScheme
                      .secondaryContainer
                      .withOpacity(0.9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  if (currentIndex == slides.length - 1) {
                    Navigator.pushReplacementNamed(context, infoPageRoute);
                  }
                  controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                child: Text(
                  currentIndex == slides.length - 1 ? 'Continue' : 'Next',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

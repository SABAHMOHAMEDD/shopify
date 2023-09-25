import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/cache_helper.dart';
import '../../../core/constants.dart';
import '../login/pages/login_screen.dart';

class OnBoardScreen extends StatelessWidget {
  var boardingController = PageController();

  bool isLast = false;

  List images = [
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  controller: boardingController,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      child: Image(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
            Expanded(
              child: SmoothPageIndicator(
                  controller: boardingController,
                  effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 9,
                      dotWidth: 9,
                      spacing: 5,
                      expansionFactor: 4,
                      activeDotColor: KPrimaryColor),
                  count: images.length),
            ),
            const Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Find the Best Coffee Made specially for u ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: KPrimaryColor),
                    ),
                    Text(
                        "there are many new flavors that will make you feel happy",
                        style: TextStyle(fontSize: 18, color: Colors.black38)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: KPrimaryColor),
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }

  void onSubmit() {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value == true) {
        Get.to(LoginScreen());
      }
    });
  }
}

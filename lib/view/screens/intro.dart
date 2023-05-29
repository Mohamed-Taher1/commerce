import 'package:commerce/constants.dart';
import 'package:commerce/view/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class IntroPage extends StatelessWidget {
  List introImages = [
    "assets/images/pexels-angele-j-128402 (1).jpg",
    "assets/images/cheese.jpg",
    "assets/images/chocholates.jpg",
    "assets/images/bread.jpg",
    "assets/images/juice.jpg",
    "assets/images/supermarket.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/intro-background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              mainColor
                  .withOpacity(0.96), // Set opacity value here (0.0 to 1.0)
              BlendMode.darken, // Adjust blend mode if needed
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .13,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Transform.scale(
                scale: 1.36,
                child: Transform.rotate(
                  angle: -12 * 3.14159 / 180,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          child: Image.asset(
                            introImages[index],
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            const Text(
              'Shop Fresh And Healthy \n Vegetables and fruits',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'We quickly deliver high - quality and fresh \n products to your home',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            InkWell(
              onTap: () {
                Get.off(() => HomePage());
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: limonColor,
                  borderRadius: BorderRadius.circular(
                      50.0), // Adjust the value as desired
                ),
                child: Text('Order Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

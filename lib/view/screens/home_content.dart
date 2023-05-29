import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../ui_models/catagory_container.dart';
import '../ui_models/product_container_1.dart';
import '../ui_models/product_container_2.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 25,
              left: screenWidth * .049,
              right: screenWidth * .049,
            ),
            child: Transform.scale(
              scale: 1.3,
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: screenHeight * .12,
                    aspectRatio: 2,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/WhatsApp Image 2023-05-25 at 23.54.09.jpg',
                        width: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25,
              left: screenWidth * .032,
            ),
            child: Text(
              'Shop By Categories',
              style: mainFont.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: SizedBox(
              height: screenHeight * 0.045,
              child: ListView.builder(
                padding: EdgeInsets.only(
                  left: screenWidth * .032,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return catagoryContainer(
                    context: context,
                    index: index,
                    name: 'Catss',
                  );
                },
              ),
            ),
          ),
          /**************** */
          SizedBox(
            height: screenHeight * .26,
            child: ListView.builder(
              padding: EdgeInsets.only(
                left: screenWidth * .032,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return productModleOne(
                    height: screenHeight, width: screenWidth);
              },
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 25, left: screenWidth * .032, bottom: 25),
            child: Text(
              'Popular Products',
              style: mainFont.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * .032),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.9,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                // crossAxisSpacing: 10
              ),
              itemBuilder: (context, index) {
                return productModleTwo(
                  height: screenHeight,
                  width: screenWidth,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

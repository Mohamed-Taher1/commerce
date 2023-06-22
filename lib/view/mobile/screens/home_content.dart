import 'package:carousel_slider/carousel_slider.dart';
import 'package:commerce/view/mobile/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../constants.dart';
import '../ui_models/catagory_container.dart';
import '../ui_models/product_container_1.dart';

class MobileHomeContent extends StatelessWidget {
  const MobileHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.h,
              left: 15.w,
              right: 15.w,
            ),
            child: Transform.scale(
              scale: 1.3,
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: 90.h,
                    aspectRatio: 2,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        'assets/images/WhatsApp Image 2023-05-25 at 23.54.09.jpg',
                        width: 270.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.h,
              left: 12.w,
            ),
            child: Text(
              'Shop By Categories',
              style: mainFont.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
            ),
            child: SizedBox(
              height: 30.h,
              child: ListView.builder(
                padding: EdgeInsets.only(
                  left: 12.w,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return catagoryContainer(
                    context: context,
                    index: index,
                    name: 'Catagory',
                  );
                },
              ),
            ),
          ),
          /**************** */
          SizedBox(
            height: 190.h,
            child: ListView.builder(
              padding: EdgeInsets.only(
                left: 12.w,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return productModleOne();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 19.h, left: 12.w, bottom: 19.h),
            child: Text(
              'Popular Products',
              style: mainFont.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: 40.h),
              itemCount:
                  Provider.of<HomeProvider>(context).productModelTwoList.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 2 / 3,
                // mainAxisSpacing: 10,
                // crossAxisCount: 2,
                // crossAxisSpacing: 10
                maxCrossAxisExtent: 200.w,
                mainAxisExtent: 190.h,
              ),
              itemBuilder: (context, index) {
                return Provider.of<HomeProvider>(context)
                    .productModelTwoList[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

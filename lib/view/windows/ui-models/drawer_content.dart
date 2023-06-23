import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import 'dashboard_main_button.dart';

class DashboardDrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    print(height);
    print(width);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/Purple Blue and Black Clean Graphic Welcome Message High School Back to School Banner.png"),
          fit: BoxFit.fill,
        ),
      ),
      width: 70.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
        child: ListView(
          children: [
            SizedBox(
              height: 130.h,
              width: 60.w,
              child: Column(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: whiteColor),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              "assets/images/how-to-become-an-online-business-manager.jpg",
                            ))),
                  ),
                  Text(
                    'manager 1',
                    textAlign: TextAlign.center,
                    style:
                        mainFont.copyWith(fontSize: 18.sp, color: whiteColor),
                  ),
                ],
              ),
            ),
            DashboardMainButton(buttonTitle: "Dashboard"),
            DashboardMainButton(buttonTitle: "Management"),
            DashboardMainButton(buttonTitle: "Order History"),
            DashboardMainButton(buttonTitle: "Banner & offers"),
            DashboardMainButton(buttonTitle: "Vendors"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.h),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.power_settings_new_rounded),
                    FittedBox(
                      child: Text(
                        "Logout",
                        style: mainFont.copyWith(fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import 'dashboard_main_button.dart';

class DashboardDrawerContent extends StatelessWidget {
  const DashboardDrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
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
                  SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: CircleAvatar(),
                  ),
                  Text(
                    'manager 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            DashboardMainButton(buttonTitle: "Dashboard"),
            DashboardMainButton(buttonTitle: "Management"),
            DashboardMainButton(buttonTitle: "Order History"),
            DashboardMainButton(buttonTitle: "Banner & offers"),
            DashboardMainButton(buttonTitle: "Dashboard"),
          ],
        ),
      ),
    );
  }
}

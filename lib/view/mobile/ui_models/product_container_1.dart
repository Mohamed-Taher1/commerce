import 'package:commerce/constants.dart';
import 'package:commerce/view/mobile/screens/prev_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

productModleOne() {
  return Padding(
    padding: EdgeInsets.only(right: 11.w),
    child: Container(
      // height: 100.h,
      width: 160.w,
      decoration: BoxDecoration(
          color: const Color(0xFF034066),
          borderRadius: BorderRadius.circular(13.r)),
      child: InkWell(
        onTap: () {
          Get.to(() => PrevItem(),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 170));
        },
        borderRadius: BorderRadius.circular(13.r),
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13.r),
                child: Image.asset(
                  "assets/images/pexels-angele-j-128402 (1).jpg",
                  height: 125.h,
                  width: 150.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Oranges",
                style: mainFont.copyWith(color: Colors.white, fontSize: 14.sp),
                maxLines: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "EG 12",
                    style: mainFont.copyWith(
                      color: limonColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "/Kg",
                    style: mainFont.copyWith(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

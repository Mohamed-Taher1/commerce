import 'package:commerce/constants.dart';
import 'package:commerce/view/mobile/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class productModleTwo extends StatelessWidget {
  const productModleTwo({Key? key, required this.productId}) : super(key: key);
  final String productId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.w, bottom: 11.h),
      child: Container(
        // height: 110.h,
        // width: 100.w,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xFF034066),
            borderRadius: BorderRadius.circular(13.r)),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Image.asset(
                    "assets/images/5-2-fruit-free-png-image.png",
                    height: 100.h,
                    width: 100.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Text(
                    "Oranges",
                    style:
                        mainFont.copyWith(color: Colors.white, fontSize: 14.sp),
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
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Consumer<HomeProvider>(
                    builder: (context, provider, child) {
                      return IconButton(
                        onPressed: () {
                          Provider.of<HomeProvider>(context, listen: false)
                              .toggleBookmarkStatus(productId);
                        },
                        icon: Provider.of<HomeProvider>(context)
                                .isBookmarked(productId)
                            ? const Icon(
                                Icons.favorite,
                                color: limonColor,
                              )
                            : const Icon(
                                Icons.favorite_outline,
                                color: limonColor,
                              ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

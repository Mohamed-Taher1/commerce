// ignore_for_file: must_be_immutable
import 'package:commerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardMainButton extends StatelessWidget {
  DashboardMainButton({required this.buttonTitle});
  String? buttonTitle;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        onTap: () {},
        child: Container(
          // alignment: Alignment.center,
          width: 70.w,
          decoration: const BoxDecoration(
              // color: mainColorFaint,
              color: whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(7))),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.dashboard,
                  // color: whiteColor,
                  color: mainColorFaint,
                  size: 15.r,
                ),
                SizedBox(
                  width: width * .005,
                ),
                Container(
                  width: 45.w,
                  child: Text(
                    buttonTitle!,
                    maxLines: 1,
                    style: mainFont.copyWith(
                        fontSize: 15.sp, color: mainColorFaint),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

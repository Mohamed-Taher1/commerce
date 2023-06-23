import 'package:commerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashCard extends StatelessWidget {
  DashCard({super.key, required this.dashCardColor, required this.cardTitle});
  Color? dashCardColor;
  String? cardTitle;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: width > 620 ? 0 : 10.h),
      child: Container(
        width: width > 620 ? 65.w : null,
        decoration: BoxDecoration(
            color: dashCardColor, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.h),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.people,
                  color: whiteColor,
                  size: width > 620 ? 11.r : 15.r,
                ),
                Container(
                  width: width > 620 ? 30.w : 100.w,
                  child: Text(
                    cardTitle!,
                    style: mainFont.copyWith(
                        color: whiteColor,
                        fontSize: width < 870 ? 10.sp : 12.sp),
                  ),
                )
              ],
            ),
            Spacer(),
            width < 620
                ? Text(
                    "15000\$",
                    style: mainFont.copyWith(
                        color: whiteColor,
                        fontSize: width < 870 ? 13.sp : 13.sp),
                  )
                : SizedBox(
                    width: 20.w,
                    child: FittedBox(
                      child: Text(
                        "15000\$",
                        style: mainFont.copyWith(
                            color: whiteColor,
                            fontSize: width < 870 ? 10.sp : 13.sp),
                      ),
                    ),
                  ),
          ]),
        ),
      ),
    );
  }
}

Widget listDashButtons() => Wrap(
      spacing: 10,
      // crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 10,
      children: [
        DashCard(
          dashCardColor: Colors.cyan[700],
          cardTitle: "People",
        ),
        DashCard(
          dashCardColor: Colors.blueGrey,
          cardTitle: "Total Money",
        ),
        DashCard(
          dashCardColor: Colors.red,
          cardTitle: "Profit",
        ),
        DashCard(
          dashCardColor: Colors.deepOrangeAccent,
          cardTitle: "orders",
        ),
        DashCard(
          dashCardColor: Colors.blueGrey,
          cardTitle: "canceled oreders",
        ),
        DashCard(
          dashCardColor: Colors.amber,
          cardTitle: "People",
        ),
        DashCard(
          dashCardColor: Colors.deepOrangeAccent,
          cardTitle: "People",
        ),
        DashCard(
          dashCardColor: Colors.red,
          cardTitle: "People",
        ),
      ],
    );

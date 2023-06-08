import 'package:commerce/view/mobile/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../constants.dart';

catagoryContainer(
    {required String name, required int index, required BuildContext context}) {
  return Padding(
    padding: EdgeInsets.only(right: 5.w),
    child: InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Provider.of<HomeProvider>(context, listen: false)
            .changecatagoriesCurrentIndex(index);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
          color: index ==
                  Provider.of<HomeProvider>(
                    context,
                  ).catagoriesCurrentIndex
              ? limonColor
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.all(6.0.w),
          child: Text(
            name,
            style: index ==
                    Provider.of<HomeProvider>(
                      context,
                    ).catagoriesCurrentIndex
                ? mainFont.copyWith(color: mainColor, fontSize: 13.sp)
                : mainFont.copyWith(color: Colors.white, fontSize: 13.sp),
          ),
        ),
      ),
    ),
  );
}


// TextButton(
//       style: index ==
//               Provider.of<HomeProvider>(
//                 context,
//               ).catagoriesCurrentIndex
//           ? TextButton.styleFrom(
//               backgroundColor: limonColor,
//             )
//           : null,
//       onPressed: () {
//         Provider.of<HomeProvider>(context, listen: false)
//             .changecatagoriesCurrentIndex(index);
//       },
//       child: Text(
//         name,
//         style: index ==
//                 Provider.of<HomeProvider>(
//                   context,
//                 ).catagoriesCurrentIndex
//             ? mainFont.copyWith(color: mainColor, fontSize: 13.sp)
//             : mainFont.copyWith(color: Colors.white, fontSize: 13.sp),
//       ),
//     )
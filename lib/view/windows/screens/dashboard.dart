import 'package:commerce/view/windows/ui-models/dash_appbar.dart';
import 'package:commerce/view/windows/ui-models/drawer_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: width < 1000 ? dashboardAppBar() : null,
      drawer: width < 1000
          ? Drawer(
              child: DashboardDrawerContent(),
            )
          : null,
      body: width >= 1000
          ? Row(
              // mainAxisSize: MainAxisSize.min,

              children: [
                DashboardDrawerContent(),
                Expanded(
                  child: Container(
                    // color: Colors.,
                    width: 390.w,
                  ),
                ),
              ],
            )
          : null,
    );
  }
}

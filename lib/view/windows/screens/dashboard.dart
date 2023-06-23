import 'package:commerce/constants.dart';
import 'package:commerce/view/windows/ui-models/dash_appbar.dart';
import 'package:commerce/view/windows/ui-models/dashboard_card.dart';
import 'package:commerce/view/windows/ui-models/drawer_content.dart';
import 'package:flutter/material.dart';

import 'mobile_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    print(width);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      appBar: width < 1000 ? dashboardAppBar() : null,
      drawer: width < 1000
          ? Drawer(
              child: DashboardDrawerContent(),
            )
          : null,
      body: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          width >= 1008 ? DashboardDrawerContent() : Container(),
          Expanded(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (width < 620) {
                      return MobileDashContent();
                    } else {
                      return listDashButtons();
                    }
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

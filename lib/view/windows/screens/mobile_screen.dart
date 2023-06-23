import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui-models/dashboard_card.dart';

class MobileDashContent extends StatelessWidget {
  const MobileDashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
  }
}

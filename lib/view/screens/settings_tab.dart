import 'package:commerce/constants.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              "Dark Modee",
              style: mainFont.copyWith(color: Colors.white),
            ),
            Icon(Icons.abc),
          ],
        )
      ],
    );
  }
}

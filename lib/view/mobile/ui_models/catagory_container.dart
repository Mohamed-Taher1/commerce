import 'package:commerce/view/mobile/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants.dart';

catagoryContainer(
    {required String name, required int index, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(right: 5),
    child: TextButton(
      style: index ==
              Provider.of<HomeProvider>(
                context,
              ).catagoriesCurrentIndex
          ? TextButton.styleFrom(
              backgroundColor: limonColor,
            )
          : null,
      onPressed: () {
        Provider.of<HomeProvider>(context, listen: false)
            .changecatagoriesCurrentIndex(index);
      },
      child: Text(
        name,
        style: index ==
                Provider.of<HomeProvider>(
                  context,
                ).catagoriesCurrentIndex
            ? mainFont.copyWith(color: mainColor)
            : mainFont.copyWith(
                color: Colors.white,
              ),
      ),
    ),
  );
}

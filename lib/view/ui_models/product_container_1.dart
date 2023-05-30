import 'package:commerce/constants.dart';
import 'package:commerce/view/screens/prev_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

productModleOne({required dynamic height, required dynamic width}) {
  return Padding(
    padding: const EdgeInsets.only(right: 11),
    child: Container(
      width: width * .44,
      decoration: BoxDecoration(
          color: Color(0xFF034066), borderRadius: BorderRadius.circular(13)),
      child: InkWell(
        onTap: () {
          Get.to(() => PrevItem(),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 170));
        },
        borderRadius: BorderRadius.circular(13),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.asset(
                  "assets/images/pexels-angele-j-128402 (1).jpg",
                  height: height * .17,
                  width: width * .4,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 1.5,
              ),
              Text(
                "Oranges",
                style: mainFont.copyWith(color: Colors.white),
                maxLines: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "EG 12",
                    style: mainFont.copyWith(
                      color: limonColor,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "/Kg",
                    style: mainFont.copyWith(
                      color: Colors.grey,
                      fontSize: 12,
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

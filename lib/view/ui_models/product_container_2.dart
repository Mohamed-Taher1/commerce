import 'package:commerce/constants.dart';
import 'package:commerce/view/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class productModleTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 11),
      child: Container(
        // height: height * .1,
        width: width * .44,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xFF034066),
            borderRadius: BorderRadius.circular(13)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  Image.asset(
                    "assets/images/5-2-fruit-free-png-image.png",
                    height: height * .16,
                    width: width * .36,
                    fit: BoxFit.cover,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .addToFavorite();
                  },
                  icon: Provider.of<HomeProvider>(context).isBookmarked
                      ? Icon(
                          Icons.favorite_outline,
                          color: limonColor,
                        )
                      : Icon(
                          Icons.favorite,
                          color: limonColor,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

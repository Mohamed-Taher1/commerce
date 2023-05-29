import 'package:flutter/material.dart';
import '../../constants.dart';

class PrevItem extends StatelessWidget {
  const PrevItem({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: mainColor,
              )),
          Container(
            height: 20,
            width: 1,
            color: Colors.blueGrey,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: mainColor,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: screenWidth * .03,
          right: screenWidth * .03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.3,
              // padding: EdgeInsets.symmetric(horizontal: screenWidth *0.15, vertical: ),
              width: screenWidth,
              decoration: BoxDecoration(
                  color: const Color(0xFF034066),
                  borderRadius: BorderRadius.circular(13)),
              child: FractionallySizedBox(
                heightFactor: 0.75,
                // widthFactor: 0.75,
                child: Image.asset(
                  "assets/images/5-2-fruit-free-png-image.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      right: screenWidth * .03,
                    ),
                    child: Container(
                      width: screenWidth * 0.3,
                      decoration: BoxDecoration(
                          color: const Color(0xFF034066),
                          borderRadius: BorderRadius.circular(13)),
                      child: FractionallySizedBox(
                        heightFactor: 0.75,
                        // widthFactor: 0.75,
                        child: Image.asset(
                          "assets/images/5-2-fruit-free-png-image.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text('Fruit',
                style: mainFont.copyWith(color: limonColor, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Alphonso mango',
                    style:
                        mainFont.copyWith(color: Colors.white, fontSize: 25)),
                Row(
                  children: [
                    Text('\$32.06',
                        style:
                            mainFont.copyWith(color: limonColor, fontSize: 25)),
                    Text(' 34.26',
                        style: mainFont.copyWith(
                          color: Colors.grey,
                          fontSize: 17,
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 30,
                    ),
                    Text(' 4.5 ',
                        style: mainFont.copyWith(
                            color: Colors.white, fontSize: 20)),
                    Icon(
                      Icons.chat,
                      color: limonColor,
                      size: 30,
                    ),
                    Text(' 63 Fleviews ',
                        style: mainFont.copyWith(
                            color: Colors.grey, fontSize: 18)),
                  ],
                ),
                Container(
                  width: screenWidth * 0.29,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                      color: Color(0xFF034066),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.plus_one,
                            color: Colors.white,
                          )),
                      const Text('1'),
                      IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.exposure_minus_1,
                            color: Colors.white,
                          )),
                    ],
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

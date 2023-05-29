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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                // top: 15,
                // left: screenWidth * .03,
                // right: screenWidth * .03,
                ),
            child: Container(
              height: screenHeight * 0.25,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: const Color(0xFF034066),
                  borderRadius: BorderRadius.circular(13)),
              child: Image.asset(
                "assets/images/5-2-fruit-free-png-image.png",
                height: screenHeight * 0.0001,
                width: 4,
                scale: 10,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * .26,
            child: ListView.builder(
              padding: EdgeInsets.only(
                left: screenWidth * .032,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: screenWidth * .049,
                    right: screenWidth * .049,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF034066),
                        borderRadius: BorderRadius.circular(13)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          "assets/images/pexels-angele-j-128402 (1).jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Text('Fruit'),
          Row(
            children: [
              Text('Alphonso mango'),
              Row(
                children: [
                  Text('\$32.06'),
                  Text('34.26'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

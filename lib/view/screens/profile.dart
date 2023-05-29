import 'package:commerce/constants.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(
        top: 25,
        left: screenWidth * .049,
        right: screenWidth * .049,
      ),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: limonColor,
              child: Container(
                width: 200,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/WhatsApp Image 2023-05-25 at 23.54.09.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .05,
            ),
            Column(
              children: [
                Text(
                  'Ma7moud Yasser',
                  style: mainFont.copyWith(color: Colors.white, fontSize: 20),
                ),
                Text('01011111111',
                    style:
                        mainFont.copyWith(color: Colors.white, fontSize: 20)),
              ],
            ),
            SizedBox(
              height: screenHeight * .1,
            ),
            Container(
              width: screenWidth * 0.5,
              height: screenHeight * 0.12,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: limonColor,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Edit Profile',
                        style: mainFont.copyWith(
                            color: mainColor,
                            // fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward,
                        color: mainColor,
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: screenHeight * .1,
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: limonColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.settings,
                        color: limonColor,
                      ),
                      SizedBox(
                        width: screenWidth * .05,
                      ),
                      Text(
                        'Setting',
                        style: mainFont.copyWith(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: limonColor,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

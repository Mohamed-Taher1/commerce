import 'package:commerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Scaffold(
            // backgroundColor: mainColor,
            appBar: AppBar(
              title: Text(
                provider.navPagesTitles[provider.currentNavIndex],
                style: GoogleFonts.aBeeZee(
                    color: mainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              actions: [
                provider.currentNavIndex != 3
                    ? Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
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
                                Icons.notifications,
                                color: mainColor,
                              )),
                        ],
                      )
                    : IconButton(
                        onPressed: () {}, icon: Icon(Icons.power_settings_new)),
              ],
            ),
            body: provider.navPages[provider.currentNavIndex],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                color: limonColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    // color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              padding: const EdgeInsets.only(
                  bottom: 20, top: 8, left: 10, right: 10),
              child: GNav(
                selectedIndex: provider.currentNavIndex,
                onTabChange: (value) {
                  provider.changeIndex(value);
                },
                gap: 8,
                color: mainColor,
                // rippleColor: limonColor,
                // duration: Duration(microseconds: 400),
                activeColor: mainColor,
                backgroundColor: limonColor,
                tabBackgroundColor: mainColor,
                hoverColor: mainColor.withOpacity(.5),
                iconSize: 21,
                padding: const EdgeInsets.all(10),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: "Home",
                    iconActiveColor: whiteColor,
                    textColor: whiteColor,
                  ),
                  GButton(
                    icon: Icons.favorite_border,
                    iconActiveColor: whiteColor,
                    textColor: whiteColor,
                    text: "Favorite",
                  ),
                  GButton(
                    icon: Icons.shopping_bag_outlined,
                    text: "Cart",
                    iconActiveColor: whiteColor,
                    textColor: whiteColor,
                  ),
                  GButton(
                    icon: Icons.person,
                    text: "Profile",
                    iconActiveColor: whiteColor,
                    textColor: whiteColor,
                  ),
                ],
              ),
            )

            // bottomNavigationBar: BottomNavigationBar(
            //   type: BottomNavigationBarType.fixed,
            //   currentIndex: provider.currentNavIndex,
            //   onTap: (value) {
            //     provider.changeIndex(value);
            //   },
            //   selectedItemColor: mainColor,
            //   // unselectedItemColor: Colors.white,
            //   items: const [
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.home),
            //       label: "Home",
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.favorite_border),
            //       label: "Favorite",
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.settings),
            //       label: "Settings",
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.shopping_bag_outlined),
            //       label: "Cart",
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.person),
            //       label: "Profile",
            //     ),
            //   ],
            // ),
            );
      },
    );
  }
}

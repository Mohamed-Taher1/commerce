import 'package:commerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class PHomePage extends StatelessWidget {
  const PHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          // backgroundColor: mainColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(ScreenUtil().setHeight(50)),
            child: AppBar(
              title: Text(
                provider.navPagesTitles[provider.currentNavIndex],
                style: GoogleFonts.aBeeZee(
                    color: mainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              actions: [
                provider.currentNavIndex != 4
                    ? Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 24.r,
                                color: mainColor,
                              )),
                          Container(
                            height: 20.h,
                            width: 1.w,
                            color: Colors.blueGrey,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                                color: mainColor,
                                size: 24.r,
                              )),
                        ],
                      )
                    : IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.power_settings_new,
                          color: mainColor,
                          size: 24.r,
                        )),
              ],
            ),
          ),
          body: AnimatedSwitcher(
            //pages animation time
            duration: const Duration(milliseconds: 150),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: provider.navPages[provider.currentNavIndex],
          ),
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
            padding: EdgeInsets.only(
                bottom: 20.h, top: 8.h, left: 10.w, right: 10.w),
            child: GNav(
              selectedIndex: provider.currentNavIndex,
              onTabChange: (value) {
                provider.changeIndex(value);
              },
              gap: 7.w,
              color: mainColor,
              // rippleColor: limonColor,
              // duration: Duration(microseconds: 400),
              activeColor: mainColor,
              backgroundColor: limonColor,
              tabBackgroundColor: mainColor,
              hoverColor: mainColor.withOpacity(.2),
              iconSize: 20.r,
              padding: const EdgeInsets.all(9).r,
              textStyle: TextStyle(fontSize: 14.sp, color: whiteColor),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  // textSize: 5.sp,
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
                  icon: Icons.settings,
                  text: "Settings",
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
          ),
        );
      },
    );
  }
}

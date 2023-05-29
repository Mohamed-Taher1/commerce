import 'package:commerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class HomePage extends StatelessWidget {
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
                  color: mainColor, fontWeight: FontWeight.w600, fontSize: 20),
            ),
            actions: [
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
          ),

          body: provider.navPages[provider.currentNavIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: provider.currentNavIndex,
            onTap: (value) {
              provider.changeIndex(value);
            },
            selectedItemColor: mainColor,
            // unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}

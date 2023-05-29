import 'package:commerce/constants.dart';
import 'package:commerce/view/provider/home_provider.dart';
import 'package:commerce/view/screens/home.dart';
import 'package:commerce/view/screens/prev_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        scaffoldBackgroundColor: mainColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: limonColor,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: limonColor,
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

import 'package:commerce/constants.dart';
import 'package:commerce/view/mobile/provider/home_provider.dart';
import 'package:commerce/view/windows/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Ecommerce',
          debugShowCheckedModeBanner: false,
          // themeMode: ThemeMode.dark,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
            scaffoldBackgroundColor: mainColor,
            iconButtonTheme: const IconButtonThemeData(
              style: ButtonStyle(
                iconColor: MaterialStatePropertyAll(mainColorFaint),
              ),
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: limonColor,
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: limonColor,
            ),
            useMaterial3: true,
          ),
          // home: Platform.isAndroid || Platform.isAndroid
          //     ? MobileHomePage()
          //     : Dashboard(),
          home: Dashboard(),
        );
      },
    );
  }
}

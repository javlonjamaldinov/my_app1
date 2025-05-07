import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/app/router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder:
          (p0, p1, p2) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              // fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              // fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            routerConfig: RouterConf.goRouter,
          ),
    );
  }
}

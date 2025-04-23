// ignore_for_file: camel_case_types
import 'package:bookly/Constants.dart';
import 'package:bookly/Core/Utils/App_Routers.dart';
import 'package:bookly/Core/Utils/Services_Locator.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(Bookly_App());
}
class Bookly_App extends StatelessWidget {
  const Bookly_App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:
              keyPrimaryColor, // same Background for all scaffolds im Application
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,   // same TextTheme for all texts im Application
          ),
        ),
    );
  }
}

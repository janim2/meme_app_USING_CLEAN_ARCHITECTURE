// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:meme_app/presentation/views/meme_home_page.dart';

class MemeApp extends StatelessWidget {
  MemeApp({super.key, required this.flavor});
  String flavor = "DEV";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: flavor == "DEV" ? "[DEV] MemeApp" : "MemeApp",
      debugShowCheckedModeBanner: flavor == "DEV" ? true : false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2A48DF),
        appBarTheme: const AppBarTheme(color: Color(0xFF2A48DF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF2A48DF),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFF2A48DF)),
          ),
        ),
        // textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      home: const MemeAppHome(),
    );
  }
}

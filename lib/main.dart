import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelui/travel_ui.dart';
import 'color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelPage(),
      theme: ThemeData(
        accentColor: Colorss.purple,
        primaryColor: Colorss.organe,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

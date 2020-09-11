import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myplist/screens/home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shaka playlist',
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(), primarySwatch: Colors.red,visualDensity: VisualDensity.adaptivePlatformDensity,),
      home:Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
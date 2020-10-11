import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_design/presentation/home_page.dart';

import 'presentation/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme),
      ),
      home: LoginPage(),
      routes: {
        'login': (context) => LoginPage(),
        'homePage': (context) => HomePage(),
      },
    );
  }
}

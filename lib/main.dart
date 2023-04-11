import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orecs/pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/Login",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.loginroute: (context) => const LoginPage(),
        MyRoutes.homeroute: (context) => const HomePage(),
      },
    );
  }
}

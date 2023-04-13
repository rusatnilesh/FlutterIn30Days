import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orecs/pages/login_page.dart';
import 'package:orecs/widgets/themes.dart';
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
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darkthem(context),
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.loginroute: (context) => const LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
      },
    );
  }
}

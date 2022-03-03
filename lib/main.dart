import 'package:flutter/material.dart';
import 'header_page2.dart';
import 'homepage.dart';
import 'header_page.dart';
import 'header_page2.dart';
import 'header_page4.dart';
import 'header_page3.dart';
import 'header_login.dart';
import 'package:mvp_193247/Widgets/headers.dart';
import 'package:mvp_193247/Widgets/mvp_v2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVP 193247',
      initialRoute: 'login',
      routes: {
        'header' : (BuildContext context) => const HeaderPage(),
        'header2' : (BuildContext context) => const HeaderPage2(),
        'header3' : (BuildContext context) => const HeaderPage3(),
        'header4' : (BuildContext context) => const HeaderPage4(),
        'login' : (BuildContext context) => const HeaderLogin(),
      },
    );
  }
}
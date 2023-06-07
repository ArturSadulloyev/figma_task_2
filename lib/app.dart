import 'package:flutter/material.dart';
import 'package:task2/pages/introduction_page.dart';
import 'package:task2/pages/sign_up_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/introduction_page',
      routes: {
        '/introduction_page': (context) => const IntroductionPage(),
        '/sign_up_page': (context) => const SignUpPage(),
      },
    );
  }
}

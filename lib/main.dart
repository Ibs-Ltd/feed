import 'package:feed/screens/main_page.dart';
import 'package:feed/screens/splash_page.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashPage(),
    );
  }
}


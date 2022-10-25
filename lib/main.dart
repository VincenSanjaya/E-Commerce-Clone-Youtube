import 'package:cloning_ecommerce_youtube/constants.dart';
import 'package:cloning_ecommerce_youtube/routs.dart';
import 'package:cloning_ecommerce_youtube/screens/splash/splash_screen.dart';
import 'package:cloning_ecommerce_youtube/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      title: 'Clone E-commerce',
      theme: theme(),
      home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}


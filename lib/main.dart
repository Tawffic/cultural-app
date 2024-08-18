
import 'package:culturalapp/screens/second_flash.dart';
import 'package:culturalapp/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      builder: DevicePreview.appBuilder,
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>const SplashScreen(),
        '/second_splash':(context)=>const SecondSplash()
      },
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: const TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.grey[700]),
        ),
      ),
    );
  }
}

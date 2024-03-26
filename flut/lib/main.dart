import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/HomePageScreen.dart';
import 'Screens/LoginPageScreen.dart';
import 'Screens/RegisterPageScreen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));//ignore notification line
  runApp(MaterialApp(
    initialRoute: '/login', // Set initial route to login page
    routes: {
      '/login': (context) => LoginPage(), // Define route for login page
      '/home': (context) => HomePage(),// Define route for home page
      '/register': (context) => RegisterPage(),//Define route for register page
    },
    theme: ThemeData(
        colorScheme: ColorScheme(brightness: Brightness.light,
            primary: Color(0xff222831),
            onPrimary:Color(0xff31363F),
            secondary: Color(0xff76ABAE),
            onSecondary: Color(0xff76ABAE),
            error: Colors.amberAccent,
            onError: Colors.amberAccent,
            background: Colors.white,
            onBackground: Colors.black54,
            surface: Color(0xffEEEEEE),
            onSurface: Color(0xff31363F)
        ),
    ),debugShowCheckedModeBanner: false,
  ));
}
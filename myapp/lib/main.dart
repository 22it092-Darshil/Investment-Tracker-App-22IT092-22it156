import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Screens/Homescreen.dart';
import 'package:myapp/Screens/Loginscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(MaterialApp(
    initialRoute: '/login', // Set initial route to login page
    routes: {
      '/login': (context) => LoginPage(), // Define route for login page
      '/home': (context) => HomePage(), // Define route for home page
    },
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
    debugShowCheckedModeBanner: false,

  ));
}

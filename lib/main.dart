import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/LoginPage.dart';
import 'package:flutter_application_1/homepage/homepage.dart'; 
import 'package:flutter_application_1/loader/loader.dart'; 
 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Colors.green,
        body:  LoginPage(),
      ),
    );
  }
}


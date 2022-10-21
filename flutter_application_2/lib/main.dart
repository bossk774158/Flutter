import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/Login/login.dart';
import 'package:flutter_application_2/Register/register.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/doctor/appointmen_create.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
    '/': (context) => const Login(),
    
    '/Home': (context) => const Home(),
    }, //route
    );
  }
}

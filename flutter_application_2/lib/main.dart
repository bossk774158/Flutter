import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/Login/login.dart';
import 'package:flutter_application_2/Register/register.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/doctor/appointmen_create.dart';
import 'package:flutter_application_2/DrChangePass/dr_change_pass.dart';
import 'package:flutter_application_2/DrChangeMail/dr_change_mail.dart';
import 'package:flutter_application_2/AddDr/add_doctor.dart';
import 'package:flutter_application_2/RollSelector/roll_selector.dart';
import 'package:flutter_application_2/PatientChangePass/pt_change_pass.dart';
import 'package:flutter_application_2/PatientChangeMail/pt_change_mail.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

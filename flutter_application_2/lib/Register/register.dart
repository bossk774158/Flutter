import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Login/login.dart';
import 'package:flutter_application_2/constants.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterForm> {
  final registerUname = TextEditingController();
  final registerPassword = TextEditingController();
  final registerCpassword = TextEditingController();
  final registerName = TextEditingController();
  final registerMail = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    registerUname.dispose();
    registerPassword.dispose();
    registerCpassword.dispose();
    registerName.dispose();
    registerMail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: SecondaryColor,
        body: Column(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(15.0),
                  )),
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
              margin: EdgeInsets.fromLTRB(40.0, 90.0, 40.0, 0.0),
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Center(
                          child: Text(
                            'สร้างบัญชีผู้ใช้',
                            style: TextStyle(
                                fontSize: 20,
                                color: ForthColor,
                                fontFamily: 'Inter'),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                    ),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('หมายเลขบัตรประชาชน',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ForthColor,
                                      fontFamily: 'Inter')),
                            ),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                  filled: true,
                                  fillColor: ForthColor),
                              controller: registerUname,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('ชื่อ - นามสกุล',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ForthColor,
                                      fontFamily: 'Inter')),
                            ),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                  filled: true,
                                  fillColor: ForthColor),
                              controller: registerName,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('รหัสผ่าน',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ForthColor,
                                      fontFamily: 'Inter')),
                            ),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                  filled: true,
                                  fillColor: ForthColor),
                              controller: registerPassword,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('ยืนยันรหัสผ่าน',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ForthColor,
                                      fontFamily: 'Inter')),
                            ),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                  filled: true,
                                  fillColor: ForthColor),
                              controller: registerCpassword,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('อีเมลล์ ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ForthColor,
                                      fontFamily: 'Inter')),
                            ),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                  filled: true,
                                  fillColor: ForthColor),
                              controller: registerMail,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(7.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                  backgroundColor: ThirdColor),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                              child: const Text(
                                'สร้างบัญชี',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: ForthColor,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                          )
                        ]),
                        margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0)),
                  ],
                )
              ]),
            )
          ],
        ));
  }
}

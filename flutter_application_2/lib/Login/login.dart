import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/Register/register.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_2/RollSelector/roll_selector.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginState();
}

class _LoginState extends State<LoginForm> {
  final loginUname = TextEditingController();
  final loginPassword = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    loginUname.dispose();
    loginPassword.dispose();
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
              child: Center(
                child: Text(
                  'KMITL พร้อม',
                  style: TextStyle(
                      fontSize: 30,
                      color: ForthColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter'),
                ),
              ),
              padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            ),
            Container(
              decoration: new BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(15.0),
                  )),
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),
              margin: EdgeInsets.fromLTRB(60.0, 40.0, 60.0, 10.0),
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('เข้าสู่ระบบผู้ใช้',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: ForthColor,
                                  fontFamily: 'Inter')),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0)),
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
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0)),
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
                                  contentPadding: EdgeInsets.all(5),
                                  filled: true,
                                  fillColor: ForthColor,
                                ),
                                controller: loginUname,
                              ),
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(5.0, 2.0, 0.0, 10.0)),
                        ]),
                        padding: EdgeInsets.all(5.0),
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
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0)),
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
                                  contentPadding: EdgeInsets.all(5),
                                  filled: true,
                                  fillColor: ForthColor,
                                ),
                                controller: loginPassword,
                              ),
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(5.0, 2.0, 0.0, 30.0)),
                        ]),
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(5.0),
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: ThirdColor),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RollSelector()),
                                );
                              },
                              child: const Text(
                                'เข้าสู่ระบบ',
                                style: TextStyle(
                                    color: ForthColor, fontFamily: 'Inter'),
                              ),
                            ),
                          ),
                          Container(
                            child: Text.rich(TextSpan(
                                style: TextStyle(
                                  fontSize: 27,
                                ),
                                children: [
                                  TextSpan(
                                      style: TextStyle(
                                          color: ForthColor,
                                          decoration: TextDecoration.underline,
                                          fontSize: 13,
                                          fontFamily: 'Inter'),
                                      text: "สร้างบัญชี",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          Navigator.pop(context);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Register()),
                                          );
                                        }),
                                ])),
                            padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 0.0),
                          )
                        ]),
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                  ],
                )
              ]),
            )
          ],
        ));
  }
}

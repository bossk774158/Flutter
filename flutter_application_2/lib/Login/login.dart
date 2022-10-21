import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/Register/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kPrimaryLightColor,
        body: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'KMITL พร้อม',
                  style: TextStyle(
                      fontSize: 30,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            ),
            Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(15.0),
                  )),
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
              margin: EdgeInsets.fromLTRB(60.0, 50.0, 60.0, 10.0),
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Login',
                              style: TextStyle(
                                  fontSize: 20, color: kPrimaryLightColor)),
                        ),
                        padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                        margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 15.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Username',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: kPrimaryLightColor)),
                              ),
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0)),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(5),
                                ),
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
                                child: Text('Password',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: kPrimaryLightColor)),
                              ),
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0)),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(5),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(5.0, 2.0, 0.0, 50.0)),
                        ]),
                        // color: Colors.grey,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(5.0),
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: buttonColor),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
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

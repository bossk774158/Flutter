import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/constants.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        body: Column(
          children: <Widget>[
            Container(
              // color: Colors.white,
              child: Center(
                child: Text(
                  'KMITL พร้อม',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            ),
            Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(15.0),
                    bottomLeft: const Radius.circular(15.0),
                    bottomRight: const Radius.circular(15.0),
                  )),
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
              margin: EdgeInsets.fromLTRB(60.0, 50.0, 60.0, 10.0),
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Login', style: TextStyle(fontSize: 20)),
                        ),
                        // color: Colors.amber,
                        padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                        margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 15.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Username',
                                    style: TextStyle(fontSize: 12)),
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
                        // color: Colors.grey,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Password',
                                    style: TextStyle(fontSize: 12)),
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
                                  padding: const EdgeInsets.all(10.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                  backgroundColor: buttonColor),
                              onPressed: () {},
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ]),
                        // color: Colors.grey,
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

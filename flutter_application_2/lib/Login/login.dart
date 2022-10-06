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
              child: Center(child: Text('KMITL')),
              color: Colors.white,
              padding: EdgeInsets.all(30.0),
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Login'),
                        ),
                        color: Colors.amber,
                        padding: EdgeInsets.all(30.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Username'),
                              ),
                              padding: EdgeInsets.all(5.0),
                              margin: EdgeInsets.all(5.0)),
                          Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(20.0),
                              margin: EdgeInsets.all(5.0)),
                        ]),
                        color: Colors.grey,
                        padding: EdgeInsets.all(30.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Password'),
                              ),
                              padding: EdgeInsets.all(5.0),
                              margin: EdgeInsets.all(5.0)),
                          Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(20.0),
                              margin: EdgeInsets.all(5.0)),
                        ]),
                        color: Colors.grey,
                        padding: EdgeInsets.all(30.0),
                        margin: EdgeInsets.all(10.0)),
                  ],
                )
              ]),
              color: Colors.white,
              padding: EdgeInsets.all(30.0),
              margin: EdgeInsets.all(10.0),
            )
          ],
        ));
  }
}

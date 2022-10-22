import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/Register/register.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kPrimaryLightColor,
        body: Column(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(15.0),
                  )),
              padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
              margin: EdgeInsets.fromLTRB(70.0, 170.0, 70.0, 10.0),
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Center(
                          child: Text(
                            'เปลี่ยนรหัสผ่าน',
                            style:
                                TextStyle(fontSize: 17, color: kPrimaryColor),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    ),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('รหัสผ่าน',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: kPrimaryLightColor)),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                        ]),
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('ยืนยันรหัสผ่าน',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: kPrimaryLightColor)),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                        ]),
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(7.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                  backgroundColor: buttonColor),
                              onPressed: () {},
                              child: const Text(
                                'ยืนยัน',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          )
                        ]),
                        padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                  ],
                )
              ]),
            )
          ],
        ));
  }
}
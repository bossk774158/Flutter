import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/constants.dart';

class AddDoctor extends StatelessWidget {
  const AddDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(15.0),
                  )),
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              margin: EdgeInsets.fromLTRB(60.0, 80.0, 60.0, 10.0),
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('เพิ่มแพทย์ในระบบ',
                            style:
                                TextStyle(fontSize: 17, color: kPrimaryColor)),
                      ),
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                    ),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('หมายเลขบัตรประชาชน',
                                  style: TextStyle(
                                      fontSize: 12, color: kPrimaryColor)),
                            ),
                          ),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0)),
                        ]),
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('ชื่อ - นามสกุล',
                                  style: TextStyle(
                                      fontSize: 12, color: kPrimaryColor)),
                            ),
                          ),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0)),
                        ]),
                        // color: Colors.grey,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('เลขประจำตัวแพทย์ ',
                                  style: TextStyle(
                                      fontSize: 12, color: kPrimaryColor)),
                            ),
                          ),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0)),
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
                                      fontSize: 12, color: kPrimaryColor)),
                            ),
                          ),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0)),
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
                                      fontSize: 12, color: kPrimaryColor)),
                            ),
                          ),
                          Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0)),
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
                                  backgroundColor: buttonColor),
                              onPressed: () {},
                              child: const Text(
                                'ยืนยัน',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
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
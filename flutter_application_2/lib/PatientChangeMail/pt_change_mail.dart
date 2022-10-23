import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/constants.dart';

class PatientChangeMail extends StatelessWidget {
  const PatientChangeMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PatientChangeMailForm(),
    );
  }
}

class PatientChangeMailForm extends StatefulWidget {
  const PatientChangeMailForm({super.key});

  @override
  State<PatientChangeMailForm> createState() => _PatientChangeMailState();
}

class _PatientChangeMailState extends State<PatientChangeMailForm> {
  final ptChangeNewMail = TextEditingController();
  final ptChangeNewMailPw = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    ptChangeNewMail.dispose();
    ptChangeNewMailPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Column(children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text.rich(TextSpan(
                              style: TextStyle(
                                fontSize: 27,
                              ),
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                      color: PrimaryColor,
                                      fontSize: 17,
                                      fontFamily: 'Inter'),
                                  text: "<   กลับ",
                                ),
                              ])),
                          padding: EdgeInsets.fromLTRB(40.0, 50.0, 0.0, 0.0),
                        ),
                        Container(
                          child: Text(
                            'เปลี่ยนอีเมลล์',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                color: PrimaryColor),
                          ),
                          padding: EdgeInsets.fromLTRB(130.0, 50.0, 0.0, 0.0),
                        )
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  ),
                  Container(
                      child: Column(children: <Widget>[
                        Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('อีเมลล์ใหม่',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: PrimaryColor,
                                      fontFamily: 'Inter')),
                            ),
                            padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                            margin: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)),
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
                                  contentPadding: EdgeInsets.all(6),
                                  filled: true,
                                  fillColor: ForthColor),
                              controller: ptChangeNewMail,
                            ),
                            padding: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
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
                                      fontSize: 13,
                                      color: PrimaryColor,
                                      fontFamily: 'Inter')),
                            ),
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            margin: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)),
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
                                  contentPadding: EdgeInsets.all(6),
                                  filled: true,
                                  fillColor: ForthColor),
                              controller: ptChangeNewMailPw,
                            ),
                            padding: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 30.0),
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
                                backgroundColor: ForthColor),
                            onPressed: () {},
                            child: const Text(
                              'ยืนยัน',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: PrimaryColor,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        )
                      ]),
                      padding: EdgeInsets.fromLTRB(250.0, 270.0, 0.0, 0.0),
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                ],
              ))
            ]),
          ],
        ));
  }
}

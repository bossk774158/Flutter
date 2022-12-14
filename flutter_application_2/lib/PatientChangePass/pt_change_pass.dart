import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/Register/register.dart';

class PatientChangePassword extends StatelessWidget {
  const PatientChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PatientChangePasswordForm(),
    );
  }
}

class PatientChangePasswordForm extends StatefulWidget {
  const PatientChangePasswordForm({super.key});

  @override
  State<PatientChangePasswordForm> createState() =>
      _PatientChangePasswordState();
}

class _PatientChangePasswordState extends State<PatientChangePasswordForm> {
  final ptChangeOriPw = TextEditingController();
  final ptChangeNewPw = TextEditingController();
  final ptChangeCNewPw = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    ptChangeOriPw.dispose();
    ptChangeNewPw.dispose();
    ptChangeCNewPw.dispose();
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
                                  text: "<   ????????????",
                                ),
                              ])),
                          padding: EdgeInsets.fromLTRB(40.0, 50.0, 0.0, 0.0),
                        ),
                        Container(
                          child: Text(
                            '?????????????????????????????????????????????',
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
                              child: Text('????????????????????????????????????',
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
                              controller: ptChangeOriPw,
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
                              child: Text('????????????????????????????????????',
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
                              controller: ptChangeNewPw,
                            ),
                            padding: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 30.0),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                        Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('?????????????????????????????????????????????????????????????????????',
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
                                    )),
                                filled: true,
                                fillColor: ForthColor,
                                isDense: true,
                                contentPadding: EdgeInsets.all(6),
                              ),
                              controller: ptChangeCNewPw,
                            ),
                            padding:
                                EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 170.0),
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
                              '??????????????????',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: PrimaryColor,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        )
                      ]),
                      padding: EdgeInsets.fromLTRB(250.0, 30.0, 0.0, 0.0),
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                ],
              ))
            ]),
          ],
        ));
  }
}

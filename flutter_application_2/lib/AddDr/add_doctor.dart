import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Login/login.dart';
import 'package:flutter_application_2/constants.dart';

class AddDoctor extends StatelessWidget {
  const AddDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddDoctorForm(),
    );
  }
}

class AddDoctorForm extends StatefulWidget {
  const AddDoctorForm({super.key});

  @override
  State<AddDoctorForm> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctorForm> {
  final addDocUname = TextEditingController();
  final addDocName = TextEditingController();
  final addDocIdenNum = TextEditingController();
  final addDocPassword = TextEditingController();
  final addDocCpassword = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    addDocUname.dispose();
    addDocName.dispose();
    addDocIdenNum.dispose();
    addDocPassword.dispose();
    addDocCpassword.dispose();
    super.dispose();
  }

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
              margin: EdgeInsets.fromLTRB(60.0, 70.0, 60.0, 10.0),
              child: Column(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('สร้างบัญชีแพทย์',
                            style: TextStyle(
                                fontSize: 20,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter')),
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
                                      fontSize: 12,
                                      color: kPrimaryColor,
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
                                  fillColor: ForthColor,
                                ),
                                controller: addDocUname,
                              ),
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
                                      fontSize: 12,
                                      color: kPrimaryColor,
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
                                  fillColor: ForthColor,
                                ),
                                controller: addDocName,
                              ),
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
                                      fontSize: 12,
                                      color: kPrimaryColor,
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
                                  fillColor: ForthColor,
                                ),
                                controller: addDocIdenNum,
                              ),
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
                                      fontSize: 12,
                                      color: kPrimaryColor,
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
                                  fillColor: ForthColor,
                                ),
                                controller: addDocPassword,
                              ),
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
                                      fontSize: 12,
                                      color: kPrimaryColor,
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
                                  fillColor: ForthColor,
                                ),
                                controller: addDocCpassword,
                              ),
                              margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0)),
                        ]),
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(10.0)),
                    Container(
                      child: Row(children: <Widget>[
                        Container(
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(5.0),
                                textStyle: const TextStyle(fontSize: 12),
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            },
                            child: const Text(
                              'ออกจากระบบ',
                              style: TextStyle(
                                  color: ForthColor, fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                        Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.fromLTRB(
                                      22.0, 7.0, 22.0, 7.0),
                                  textStyle: const TextStyle(fontSize: 12),
                                  backgroundColor: ThirdColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: const Text(
                                'ยืนยัน',
                                style: TextStyle(
                                    color: PrimaryColor, fontFamily: 'Inter'),
                              ),
                            ),
                            padding: EdgeInsets.all(5.0),
                            margin: EdgeInsets.all(10.0)),
                      ]),
                      padding: EdgeInsets.fromLTRB(54.0, 10.0, 0.0, 0.0),
                    ),
                  ],
                )
              ]),
            )
          ],
        ));
  }
}

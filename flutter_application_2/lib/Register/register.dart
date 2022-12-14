import 'package:firebase_auth/firebase_auth.dart';
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
  TextEditingController _unameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _cpasswordTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _mailTextController = TextEditingController();

  bool _validate = false;

  @override
  void errorText() {}

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _unameTextController.dispose();
    _passwordTextController.dispose();
    _cpasswordTextController.dispose();
    _nameTextController.dispose();
    _mailTextController.dispose();
    super.dispose();
  }

  String? get _errorUname {
    final text = _unameTextController.value.text;

    if (!_validate) {
      return null;
    }
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
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
                            '????????????????????????????????????????????????',
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
                              child: Text('??????????????????????????????????????????????????????',
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
                                fillColor: ForthColor,
                                errorText: _errorUname,
                              ),
                              controller: _unameTextController,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(5.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('???????????? - ?????????????????????',
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
                              controller: _nameTextController,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(5.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('????????????????????????',
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
                              controller: _passwordTextController,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(5.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('??????????????????????????????????????????',
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
                              controller: _cpasswordTextController,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(5.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('????????????????????? ',
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
                              controller: _mailTextController,
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.all(5.0)),
                    Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(7.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                  backgroundColor: ThirdColor),
                              onPressed: () {
                                setState(() {
                                  _unameTextController.text.isEmpty
                                      ? _validate = true
                                      : _validate = false;
                                });
                                // Navigator.pop(context);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const Login()),
                                // );
                              },
                              child: const Text(
                                '??????????????????????????????',
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

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/AddDr/add_doctor.dart';
import 'package:flutter_application_2/constants.dart';

class RollSelector extends StatelessWidget {
  const RollSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Container(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 25.0),
                  textStyle: const TextStyle(fontSize: 15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: FifthColor,
                          width: 1.3,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: const Text(
                'คนไข้',
                style: TextStyle(color: FifthColor, fontFamily: 'Inter'),
              ),
            ),
          ),
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          margin: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 20.0),
        ),
        Container(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 25.0),
                  textStyle: const TextStyle(fontSize: 15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: FifthColor,
                          width: 1.3,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: const Text(
                'แพทย์',
                style: TextStyle(color: FifthColor, fontFamily: 'Inter'),
              ),
            ),
          ),
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
        ),
        Container(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 25.0),
                  textStyle: const TextStyle(fontSize: 15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: FifthColor,
                          width: 1.3,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddDoctor()),
                );
              },
              child: const Text(
                'แอดมิน',
                style: TextStyle(color: FifthColor, fontFamily: 'Inter'),
              ),
            ),
          ),
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
        )
      ]),
    );
  }
}

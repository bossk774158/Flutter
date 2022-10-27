import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentDoctorCreate extends StatefulWidget {
  const AppointmentDoctorCreate({Key? key}) : super(key: key);

  @override
  _AppointmentDoctorCreateState createState() =>
      _AppointmentDoctorCreateState();
}

class _AppointmentDoctorCreateState extends State<AppointmentDoctorCreate> {
  DateTimeRange? calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                    child: Text(
                      '<   กลับ',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        color: Color(0xFF1C6758),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(100, 30, 0, 0),
                    child: Text(
                      'การสร้างนัดหมาย',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        color: Color(0xFF1C6758),
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 15, 0, 0),
                    child: Container(
                        width: 327,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: TableCalendar(
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                    child: Container(
                      width: 325,
                      height: 262,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.1,
                        ),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

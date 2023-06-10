import 'package:flutter/material.dart';

import '../component/tablecalendar_component.dart';

class TableCalendarScreen extends StatelessWidget {
  const TableCalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableCalendarComponent(),
    );
  }
}

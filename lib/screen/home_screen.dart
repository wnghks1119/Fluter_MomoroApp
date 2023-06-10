import 'package:flutter/material.dart';
import 'package:hello_world/screen/tablecalendar_screen.dart';
import '../component/input_text_list_component.dart';
import '../component/tablecalendar_component.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TableCalendarScreen(),
      ),
    );
  }
}

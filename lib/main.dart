import 'package:flutter/material.dart';
import 'package:hello_world/screan/home_screan.dart';
import 'package:hello_world/screan/routine_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initializeDateFormatting();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

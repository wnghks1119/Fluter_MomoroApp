import 'package:flutter/material.dart';
import 'package:hello_world/screen/home_screen.dart';
import 'package:hello_world/screen/routine_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'app.dart';

void main() async {
  await initializeDateFormatting();

  runApp(
    MaterialApp(
      home: App(),
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/Routine_list_component.dart';
import 'home_screan.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("루틴 추천"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoutineTheme(theme: "신체"),
                RoutineTheme(theme: "정서"),
                RoutineTheme(theme: "정신"),
                RoutineTheme(theme: "영성"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoutineTheme extends StatelessWidget {
  final String theme;

  const RoutineTheme({required this.theme, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (_) {
            if (theme == "신체") {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child:  RoutineListSheet_body(routineTheme: theme),
              );
            } else if (theme == "정서") {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child:  RoutineListSheet_emotion(routineTheme: theme),
              );
            } else if (theme == "정신") {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child:  RoutineListSheet_mind(routineTheme: theme),
              );
            } else {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child:  RoutineListSheet_spirituality(routineTheme: theme),
              );
            }
          },
        );
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
      ),
      child: Text(
        theme,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

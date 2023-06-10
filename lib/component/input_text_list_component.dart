import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_world/component/text_bottom_sheet.dart';
import 'package:intl/intl.dart';
import '../screen/routine_screen.dart';

class InputTextListComponent extends StatelessWidget {
  final DateTime selectedDate;

  const InputTextListComponent({required this.selectedDate, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Challenge"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      "${selectedDate.year}년 ${selectedDate.month}월 ${selectedDate.day}일 "
                      "${DateFormat.EEEE('ko').format(selectedDate)}",
                      //"$selectedDate",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StarBox(),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return RoutineScreen();
                                },
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.greenAccent,
                              primary: Colors.black,
                              textStyle: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                            ),
                            child: Text("루틴 추천"),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextInputBox(
                            title: '1. 감사한 일',
                          ),
                          TextInputBox(
                            title: '2. 다행인 일',
                          ),
                          TextInputBox(
                            title: '3. 잘한 일',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StarBox extends StatelessWidget {
  const StarBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_border,
          size: 35,
        ),
        Icon(
          Icons.star_border,
          size: 35,
        ),
        Icon(
          Icons.star_border,
          size: 35,
        ),
        Icon(
          Icons.star_border,
          size: 35,
        ),
        Icon(
          Icons.star_border,
          size: 35,
        ),
      ],
    );
  }
}

class TextInputBox extends StatelessWidget {
  final String title;

  const TextInputBox({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            //padding: EdgeInsets.fromLTRB(0, 0, 25, 35),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) {
                    return TextBottomSheet(
                      label: title,
                    );
                  },
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                primary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 17),
              ),
              child: Text("입력"),
            ),
          ),
        ],
      ),
    );
  }
}

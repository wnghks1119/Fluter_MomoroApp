import 'package:drift/remote.dart';
import 'package:flutter/material.dart';


class RoutineListSheet_body extends StatelessWidget {
  final String routineTheme;

  const RoutineListSheet_body({required this.routineTheme, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '< $routineTheme >',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoutineList(textList: "1. 신체"),
                  RoutineList(textList: "2. ---"),
                  RoutineList(textList: "3. ---"),
                  RoutineList(textList: "4. ---"),
                  RoutineList(textList: "5. ---"),
                  RoutineList(textList: "7. ---"),
                  RoutineList(textList: "8. ---"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoutineListSheet_emotion extends StatelessWidget {
  final String routineTheme;

  const RoutineListSheet_emotion({required this.routineTheme, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '< $routineTheme >',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoutineList(textList: "1. 정서"),
                  RoutineList(textList: "2. ---"),
                  RoutineList(textList: "3. ---"),
                  RoutineList(textList: "4. ---"),
                  RoutineList(textList: "5. ---"),
                  RoutineList(textList: "7. ---"),
                  RoutineList(textList: "8. ---"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoutineListSheet_mind extends StatelessWidget {
  final String routineTheme;

  const RoutineListSheet_mind({required this.routineTheme, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '< $routineTheme >',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoutineList(textList: "오늘 하루 참 다행인 것은 무엇인가요?"),
                  RoutineList(textList: "나의 장점 10가지를 기록해 보아요."),
                  RoutineList(textList: "최근에 내가 이룬 성취 5가지를 기록해보아요."),
                  RoutineList(textList: "일단 5분 책읽기를 도전해 보아요."),
                  RoutineList(textList: "오늘 하루 참 감사한 것은 무엇인가요?"),
                  RoutineList(textList: "하루 생활 중 이룰 수 있는 작은 목표 하나를 세우고 실천해 보아요."),
                  RoutineList(textList: "오늘 한 행동 중 내일부터는 고치고 싶은 행동을 작성해 보아요."),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoutineListSheet_spirituality extends StatelessWidget {
  final String routineTheme;

  const RoutineListSheet_spirituality({required this.routineTheme, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '< $routineTheme >',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoutineList(textList: "1. 영성"),
                  RoutineList(textList: "2. ---"),
                  RoutineList(textList: "3. ---"),
                  RoutineList(textList: "4. ---"),
                  RoutineList(textList: "5. ---"),
                  RoutineList(textList: "7. ---"),
                  RoutineList(textList: "8. ---"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ScreenTitle extends StatelessWidget {
  final String theme;

  const ScreenTitle({required this.theme, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        '< $theme >',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: const BackButton(
        color: Colors.black,
      ),
    );
  }
}

class RoutineList extends StatelessWidget {
  final String textList;

  const RoutineList({required this.textList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textList,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
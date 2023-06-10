import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../screen/login_after_screen.dart';
import 'input_text_list_component.dart';

class TableCalendarComponent extends StatefulWidget {
  const TableCalendarComponent({Key? key}) : super(key: key);

  @override
  State<TableCalendarComponent> createState() => _TableCalendarComponentState();
}

class _TableCalendarComponentState extends State<TableCalendarComponent> {
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => loginAfterScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: TableCalendar(
        locale: 'ko_KR',
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2029, 12, 31),
        focusedDay: DateTime.now(),

        onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
          setState(() {
            this.selectedDay = selectedDay;
          });
          showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return InputTextListComponent(
                selectedDate: DateTime(
                   selectedDay.year,
                   selectedDay.month,
                   selectedDay.day,
                ),
              );
            },
          );
        },
        selectedDayPredicate: (DateTime date){
          if(selectedDay == null){
            return false;
          }

          return date.year == selectedDay!.year &&
              date.month == selectedDay!.month &&
              date.day == selectedDay!.day;
        },

        headerStyle: HeaderStyle(
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          formatButtonVisible: false,
        ),

        calendarStyle: CalendarStyle(
          defaultTextStyle: TextStyle(color: Colors.black,),
          weekendTextStyle: TextStyle(color: Colors.grey,),

          outsideDaysVisible: false,

          isTodayHighlighted: false,
          todayDecoration: BoxDecoration(
            color: Color(0xFF9FA8DA),
            shape: BoxShape.circle,
          ),

          selectedTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

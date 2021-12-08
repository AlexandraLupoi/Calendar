import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:table_calendar/table_calendar.dart';

import '../actions/get_holidays.dart';
import '../containers/holidays_container.dart';
import '../containers/is_loading_container.dart';
import '../models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay = DateTime.now();

  void onResult(dynamic action) {
    if (action is GetHolidaysError) {
      showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Error getting holidays'),
              content: Text('${action.error}'),
            );
          });
    }
  }

  @override
  void initState() {
    super.initState();

    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);

    store.dispatch(GetHolidays(onResult));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Calendar')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar<Widget>(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020),
              lastDay: DateTime.utc(2022, 12, 31),
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarFormat: _calendarFormat,
              onFormatChanged: (CalendarFormat calendarFormat) {
                setState(() {
                  _calendarFormat = calendarFormat;
                });
              },
              selectedDayPredicate: (DateTime day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
            ),
            Expanded(child: IsLoadingContainer(
              builder: (BuildContext context, bool isLoading) {
                if (isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return HolidaysContainer(builder: (BuildContext context, List<Holiday> holidays) {
                    return ListView.builder(
                      itemCount: holidays.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Holiday holiday = holidays[index];

                        final String date = holiday.date.toString();
                        final String year = date.substring(date.indexOf('year:') + 6, date.indexOf(', month:'));
                        final String month = date.substring(date.indexOf('month:') + 7, date.indexOf(', day:'));
                        final String day = date.substring(
                            date.indexOf('day:') + 5, date.length < 80 ? date.indexOf('}}') : date.indexOf(', hour:'));

                        if (int.parse(year) == _selectedDay!.year &&
                            int.parse(month) == _selectedDay!.month &&
                            int.parse(day) == _selectedDay!.day) {
                          return ListTile(title: Text(holiday.name));
                        } else {
                          return Container();
                        }
                      },
                    );
                  });
                }
              },
            )),
          ],
        ));
  }
}

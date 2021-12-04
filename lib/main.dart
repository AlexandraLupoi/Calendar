import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import './src/data/calendar_api.dart';
import './src/epics/app_epics.dart';
import './src/models/app_state.dart';
import './src/presentation/home_page.dart';
import './src/reducer/reducer.dart';

void main() {
  final CalendarApi calendarApi = CalendarApi();
  final AppEpics epics = AppEpics(calendarApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
        print(store.state);
      },
      EpicMiddleware<AppState>(epics.epics)
    ]
  );

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const HomePage()
      )
    );
  }
}

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/get_holidays.dart';
import '../data/calendar_api.dart';
import '../models/app_state.dart';

class AppEpics {
  AppEpics(this._api);

  final CalendarApi _api;

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetHolidays>(getHolidays)
    ]);
  }

  Stream<dynamic> getHolidays(Stream<GetHolidays> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((GetHolidays action) => Stream<void>.value(null)
          .asyncMap((_) => _api.getHolidays())
          .map<Object>((List<dynamic> holidays) => GetHolidaysSuccessful(holidays))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetHolidaysError(error))
          .doOnData(action.result));
  }
}

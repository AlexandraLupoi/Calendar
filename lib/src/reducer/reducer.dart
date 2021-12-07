import 'package:redux/redux.dart';

import '../actions/get_holidays.dart';
import '../models/index.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetHolidays>(_getHolidays),
  TypedReducer<AppState, GetHolidaysSuccessful>(_getHolidaysSuccessful),
  TypedReducer<AppState, GetHolidaysError>(_getHolidaysError)
]);

AppState _getHolidays(AppState state, GetHolidays action) {
  return state.copyWith(isLoading: true);
}

AppState _getHolidaysSuccessful(AppState state, GetHolidaysSuccessful action) {
  final List<Holiday> holidays = <Holiday>[];

  holidays.addAll(state.holidays);
  holidays.addAll(action.holidays);

  return state.copyWith(holidays: holidays, isLoading: false);
}

AppState _getHolidaysError(AppState state, GetHolidaysError action) {
  return state.copyWith(isLoading: false);
}

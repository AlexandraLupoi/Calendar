class GetHolidays {
  const GetHolidays(this.result);

  final void Function(dynamic action) result;
}

class GetHolidaysSuccessful {
  const GetHolidaysSuccessful(this.holidays);

  final List<dynamic> holidays;
}

class GetHolidaysError {
  const GetHolidaysError(this.error);

  final Object error;
}

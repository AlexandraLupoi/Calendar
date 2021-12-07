part of models;

@freezed
class AppState with _$AppState {
  const factory AppState({@Default(<Holiday>[]) List<Holiday> holidays, @Default(false) bool isLoading}) = AppState$;
}

class AppState {
  AppState({
    this.holidays = const <dynamic>[],
    this.isLoading = false
  });

  AppState copyWith({
    final List<dynamic>? holidays,
    final bool? isLoading
  }) {
    return AppState(
      holidays: holidays ?? this.holidays,
      isLoading: isLoading ?? this.isLoading
    );
  }

  final List<dynamic> holidays;
  final bool isLoading;
}

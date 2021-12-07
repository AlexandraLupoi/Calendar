part of models;

@freezed
class Holiday with _$Holiday {
  const factory Holiday({required String name, required Object date}) = Holiday$;

  factory Holiday.fromJson(Map<dynamic, dynamic> json) => _$HolidayFromJson(Map<String, dynamic>.from(json));
}

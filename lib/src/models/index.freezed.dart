// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call({List<Holiday> holidays = const <Holiday>[], bool isLoading = false}) {
    return AppState$(
      holidays: holidays,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<Holiday> get holidays => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res>;
  $Res call({List<Holiday> holidays, bool isLoading});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? holidays = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<Holiday>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) = _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call({List<Holiday> holidays, bool isLoading});
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res> implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? holidays = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(AppState$(
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<Holiday>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$({this.holidays = const <Holiday>[], this.isLoading = false});

  @JsonKey(defaultValue: const <Holiday>[])
  @override
  final List<Holiday> holidays;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AppState(holidays: $holidays, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.holidays, holidays) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(holidays), const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith => _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$({List<Holiday> holidays, bool isLoading}) = _$AppState$;

  @override
  List<Holiday> get holidays;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith => throw _privateConstructorUsedError;
}

Holiday _$HolidayFromJson(Map<String, dynamic> json) {
  return Holiday$.fromJson(json);
}

/// @nodoc
class _$HolidayTearOff {
  const _$HolidayTearOff();

  Holiday$ call({required String name, required Object date}) {
    return Holiday$(
      name: name,
      date: date,
    );
  }

  Holiday fromJson(Map<String, Object?> json) {
    return Holiday.fromJson(json);
  }
}

/// @nodoc
const $Holiday = _$HolidayTearOff();

/// @nodoc
mixin _$Holiday {
  String get name => throw _privateConstructorUsedError;
  Object get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayCopyWith<Holiday> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayCopyWith<$Res> {
  factory $HolidayCopyWith(Holiday value, $Res Function(Holiday) then) = _$HolidayCopyWithImpl<$Res>;
  $Res call({String name, Object date});
}

/// @nodoc
class _$HolidayCopyWithImpl<$Res> implements $HolidayCopyWith<$Res> {
  _$HolidayCopyWithImpl(this._value, this._then);

  final Holiday _value;
  // ignore: unused_field
  final $Res Function(Holiday) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
abstract class $Holiday$CopyWith<$Res> implements $HolidayCopyWith<$Res> {
  factory $Holiday$CopyWith(Holiday$ value, $Res Function(Holiday$) then) = _$Holiday$CopyWithImpl<$Res>;
  @override
  $Res call({String name, Object date});
}

/// @nodoc
class _$Holiday$CopyWithImpl<$Res> extends _$HolidayCopyWithImpl<$Res> implements $Holiday$CopyWith<$Res> {
  _$Holiday$CopyWithImpl(Holiday$ _value, $Res Function(Holiday$) _then) : super(_value, (v) => _then(v as Holiday$));

  @override
  Holiday$ get _value => super._value as Holiday$;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(Holiday$(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Holiday$ implements Holiday$ {
  const _$Holiday$({required this.name, required this.date});

  factory _$Holiday$.fromJson(Map<String, dynamic> json) => _$$Holiday$FromJson(json);

  @override
  final String name;
  @override
  final Object date;

  @override
  String toString() {
    return 'Holiday(name: $name, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Holiday$ &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name), const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  $Holiday$CopyWith<Holiday$> get copyWith => _$Holiday$CopyWithImpl<Holiday$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Holiday$ToJson(this);
  }
}

abstract class Holiday$ implements Holiday {
  const factory Holiday$({required String name, required Object date}) = _$Holiday$;

  factory Holiday$.fromJson(Map<String, dynamic> json) = _$Holiday$.fromJson;

  @override
  String get name;
  @override
  Object get date;
  @override
  @JsonKey(ignore: true)
  $Holiday$CopyWith<Holiday$> get copyWith => throw _privateConstructorUsedError;
}

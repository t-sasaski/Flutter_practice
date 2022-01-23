// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDo _$ToDoFromJson(Map<String, dynamic> json) {
  return _ToDo.fromJson(json);
}

/// @nodoc
class _$ToDoTearOff {
  const _$ToDoTearOff();

  _ToDo call({required String title, bool archived = false}) {
    return _ToDo(
      title: title,
      archived: archived,
    );
  }

  ToDo fromJson(Map<String, Object?> json) {
    return ToDo.fromJson(json);
  }
}

/// @nodoc
const $ToDo = _$ToDoTearOff();

/// @nodoc
mixin _$ToDo {
  /// ToDoのタイトルです
  String get title => throw _privateConstructorUsedError;

  /// ToDo完了状態です
  bool get archived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoCopyWith<ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWith<$Res> {
  factory $ToDoCopyWith(ToDo value, $Res Function(ToDo) then) =
      _$ToDoCopyWithImpl<$Res>;
  $Res call({String title, bool archived});
}

/// @nodoc
class _$ToDoCopyWithImpl<$Res> implements $ToDoCopyWith<$Res> {
  _$ToDoCopyWithImpl(this._value, this._then);

  final ToDo _value;
  // ignore: unused_field
  final $Res Function(ToDo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? archived = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ToDoCopyWith<$Res> implements $ToDoCopyWith<$Res> {
  factory _$ToDoCopyWith(_ToDo value, $Res Function(_ToDo) then) =
      __$ToDoCopyWithImpl<$Res>;
  @override
  $Res call({String title, bool archived});
}

/// @nodoc
class __$ToDoCopyWithImpl<$Res> extends _$ToDoCopyWithImpl<$Res>
    implements _$ToDoCopyWith<$Res> {
  __$ToDoCopyWithImpl(_ToDo _value, $Res Function(_ToDo) _then)
      : super(_value, (v) => _then(v as _ToDo));

  @override
  _ToDo get _value => super._value as _ToDo;

  @override
  $Res call({
    Object? title = freezed,
    Object? archived = freezed,
  }) {
    return _then(_ToDo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDo implements _ToDo {
  _$_ToDo({required this.title, this.archived = false});

  factory _$_ToDo.fromJson(Map<String, dynamic> json) => _$$_ToDoFromJson(json);

  @override

  /// ToDoのタイトルです
  final String title;
  @JsonKey(defaultValue: false)
  @override

  /// ToDo完了状態です
  final bool archived;

  @override
  String toString() {
    return 'ToDo(title: $title, archived: $archived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToDo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.archived, archived) ||
                other.archived == archived));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, archived);

  @JsonKey(ignore: true)
  @override
  _$ToDoCopyWith<_ToDo> get copyWith =>
      __$ToDoCopyWithImpl<_ToDo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDoToJson(this);
  }
}

abstract class _ToDo implements ToDo {
  factory _ToDo({required String title, bool archived}) = _$_ToDo;

  factory _ToDo.fromJson(Map<String, dynamic> json) = _$_ToDo.fromJson;

  @override

  /// ToDoのタイトルです
  String get title;
  @override

  /// ToDo完了状態です
  bool get archived;
  @override
  @JsonKey(ignore: true)
  _$ToDoCopyWith<_ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ToDoRecordTearOff {
  const _$ToDoRecordTearOff();

  _ToDoRecord call(int key, ToDo value) {
    return _ToDoRecord(
      key,
      value,
    );
  }
}

/// @nodoc
const $ToDoRecord = _$ToDoRecordTearOff();

/// @nodoc
mixin _$ToDoRecord {
  int get key => throw _privateConstructorUsedError;
  ToDo get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoRecordCopyWith<ToDoRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoRecordCopyWith<$Res> {
  factory $ToDoRecordCopyWith(
          ToDoRecord value, $Res Function(ToDoRecord) then) =
      _$ToDoRecordCopyWithImpl<$Res>;
  $Res call({int key, ToDo value});

  $ToDoCopyWith<$Res> get value;
}

/// @nodoc
class _$ToDoRecordCopyWithImpl<$Res> implements $ToDoRecordCopyWith<$Res> {
  _$ToDoRecordCopyWithImpl(this._value, this._then);

  final ToDoRecord _value;
  // ignore: unused_field
  final $Res Function(ToDoRecord) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ToDo,
    ));
  }

  @override
  $ToDoCopyWith<$Res> get value {
    return $ToDoCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$ToDoRecordCopyWith<$Res> implements $ToDoRecordCopyWith<$Res> {
  factory _$ToDoRecordCopyWith(
          _ToDoRecord value, $Res Function(_ToDoRecord) then) =
      __$ToDoRecordCopyWithImpl<$Res>;
  @override
  $Res call({int key, ToDo value});

  @override
  $ToDoCopyWith<$Res> get value;
}

/// @nodoc
class __$ToDoRecordCopyWithImpl<$Res> extends _$ToDoRecordCopyWithImpl<$Res>
    implements _$ToDoRecordCopyWith<$Res> {
  __$ToDoRecordCopyWithImpl(
      _ToDoRecord _value, $Res Function(_ToDoRecord) _then)
      : super(_value, (v) => _then(v as _ToDoRecord));

  @override
  _ToDoRecord get _value => super._value as _ToDoRecord;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_ToDoRecord(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ToDo,
    ));
  }
}

/// @nodoc

class _$_ToDoRecord implements _ToDoRecord {
  _$_ToDoRecord(this.key, this.value);

  @override
  final int key;
  @override
  final ToDo value;

  @override
  String toString() {
    return 'ToDoRecord(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToDoRecord &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  _$ToDoRecordCopyWith<_ToDoRecord> get copyWith =>
      __$ToDoRecordCopyWithImpl<_ToDoRecord>(this, _$identity);
}

abstract class _ToDoRecord implements ToDoRecord {
  factory _ToDoRecord(int key, ToDo value) = _$_ToDoRecord;

  @override
  int get key;
  @override
  ToDo get value;
  @override
  @JsonKey(ignore: true)
  _$ToDoRecordCopyWith<_ToDoRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

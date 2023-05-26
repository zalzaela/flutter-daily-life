// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IncomeModel _$IncomeModelFromJson(Map<String, dynamic> json) {
  return _InomeModel.fromJson(json);
}

/// @nodoc
mixin _$IncomeModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  Timestamp get timestamp => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomeModelCopyWith<IncomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeModelCopyWith<$Res> {
  factory $IncomeModelCopyWith(
          IncomeModel value, $Res Function(IncomeModel) then) =
      _$IncomeModelCopyWithImpl<$Res, IncomeModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      String account,
      String notes,
      int amount,
      Timestamp timestamp,
      bool status});
}

/// @nodoc
class _$IncomeModelCopyWithImpl<$Res, $Val extends IncomeModel>
    implements $IncomeModelCopyWith<$Res> {
  _$IncomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? account = null,
    Object? notes = null,
    Object? amount = null,
    Object? timestamp = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InomeModelCopyWith<$Res>
    implements $IncomeModelCopyWith<$Res> {
  factory _$$_InomeModelCopyWith(
          _$_InomeModel value, $Res Function(_$_InomeModel) then) =
      __$$_InomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      String account,
      String notes,
      int amount,
      Timestamp timestamp,
      bool status});
}

/// @nodoc
class __$$_InomeModelCopyWithImpl<$Res>
    extends _$IncomeModelCopyWithImpl<$Res, _$_InomeModel>
    implements _$$_InomeModelCopyWith<$Res> {
  __$$_InomeModelCopyWithImpl(
      _$_InomeModel _value, $Res Function(_$_InomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? account = null,
    Object? notes = null,
    Object? amount = null,
    Object? timestamp = null,
    Object? status = null,
  }) {
    return _then(_$_InomeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TimestampConverter()
class _$_InomeModel implements _InomeModel {
  const _$_InomeModel(
      {required this.id,
      required this.title,
      required this.category,
      required this.account,
      required this.notes,
      required this.amount,
      required this.timestamp,
      this.status = true});

  factory _$_InomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_InomeModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String category;
  @override
  final String account;
  @override
  final String notes;
  @override
  final int amount;
  @override
  final Timestamp timestamp;
  @override
  @JsonKey()
  final bool status;

  @override
  String toString() {
    return 'IncomeModel(id: $id, title: $title, category: $category, account: $account, notes: $notes, amount: $amount, timestamp: $timestamp, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InomeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, category, account,
      notes, amount, timestamp, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InomeModelCopyWith<_$_InomeModel> get copyWith =>
      __$$_InomeModelCopyWithImpl<_$_InomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InomeModelToJson(
      this,
    );
  }
}

abstract class _InomeModel implements IncomeModel {
  const factory _InomeModel(
      {required final String id,
      required final String title,
      required final String category,
      required final String account,
      required final String notes,
      required final int amount,
      required final Timestamp timestamp,
      final bool status}) = _$_InomeModel;

  factory _InomeModel.fromJson(Map<String, dynamic> json) =
      _$_InomeModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get category;
  @override
  String get account;
  @override
  String get notes;
  @override
  int get amount;
  @override
  Timestamp get timestamp;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$_InomeModelCopyWith<_$_InomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

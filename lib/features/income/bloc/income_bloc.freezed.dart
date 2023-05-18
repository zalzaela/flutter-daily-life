// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeModel income) addIncome,
    required TResult Function() getIncomes,
    required TResult Function(IncomeModel income) updateIncome,
    required TResult Function(String incomeId) deleteIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeModel income)? addIncome,
    TResult? Function()? getIncomes,
    TResult? Function(IncomeModel income)? updateIncome,
    TResult? Function(String incomeId)? deleteIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeModel income)? addIncome,
    TResult Function()? getIncomes,
    TResult Function(IncomeModel income)? updateIncome,
    TResult Function(String incomeId)? deleteIncome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(GetIncomes value) getIncomes,
    required TResult Function(UpdateIncome value) updateIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(GetIncomes value)? getIncomes,
    TResult? Function(UpdateIncome value)? updateIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(GetIncomes value)? getIncomes,
    TResult Function(UpdateIncome value)? updateIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEventCopyWith<$Res> {
  factory $IncomeEventCopyWith(
          IncomeEvent value, $Res Function(IncomeEvent) then) =
      _$IncomeEventCopyWithImpl<$Res, IncomeEvent>;
}

/// @nodoc
class _$IncomeEventCopyWithImpl<$Res, $Val extends IncomeEvent>
    implements $IncomeEventCopyWith<$Res> {
  _$IncomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddIncomeCopyWith<$Res> {
  factory _$$AddIncomeCopyWith(
          _$AddIncome value, $Res Function(_$AddIncome) then) =
      __$$AddIncomeCopyWithImpl<$Res>;
  @useResult
  $Res call({IncomeModel income});

  $IncomeModelCopyWith<$Res> get income;
}

/// @nodoc
class __$$AddIncomeCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$AddIncome>
    implements _$$AddIncomeCopyWith<$Res> {
  __$$AddIncomeCopyWithImpl(
      _$AddIncome _value, $Res Function(_$AddIncome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
  }) {
    return _then(_$AddIncome(
      null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as IncomeModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IncomeModelCopyWith<$Res> get income {
    return $IncomeModelCopyWith<$Res>(_value.income, (value) {
      return _then(_value.copyWith(income: value));
    });
  }
}

/// @nodoc

class _$AddIncome implements AddIncome {
  const _$AddIncome(this.income);

  @override
  final IncomeModel income;

  @override
  String toString() {
    return 'IncomeEvent.addIncome(income: $income)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddIncome &&
            (identical(other.income, income) || other.income == income));
  }

  @override
  int get hashCode => Object.hash(runtimeType, income);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddIncomeCopyWith<_$AddIncome> get copyWith =>
      __$$AddIncomeCopyWithImpl<_$AddIncome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeModel income) addIncome,
    required TResult Function() getIncomes,
    required TResult Function(IncomeModel income) updateIncome,
    required TResult Function(String incomeId) deleteIncome,
  }) {
    return addIncome(income);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeModel income)? addIncome,
    TResult? Function()? getIncomes,
    TResult? Function(IncomeModel income)? updateIncome,
    TResult? Function(String incomeId)? deleteIncome,
  }) {
    return addIncome?.call(income);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeModel income)? addIncome,
    TResult Function()? getIncomes,
    TResult Function(IncomeModel income)? updateIncome,
    TResult Function(String incomeId)? deleteIncome,
    required TResult orElse(),
  }) {
    if (addIncome != null) {
      return addIncome(income);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(GetIncomes value) getIncomes,
    required TResult Function(UpdateIncome value) updateIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
  }) {
    return addIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(GetIncomes value)? getIncomes,
    TResult? Function(UpdateIncome value)? updateIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
  }) {
    return addIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(GetIncomes value)? getIncomes,
    TResult Function(UpdateIncome value)? updateIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    required TResult orElse(),
  }) {
    if (addIncome != null) {
      return addIncome(this);
    }
    return orElse();
  }
}

abstract class AddIncome implements IncomeEvent {
  const factory AddIncome(final IncomeModel income) = _$AddIncome;

  IncomeModel get income;
  @JsonKey(ignore: true)
  _$$AddIncomeCopyWith<_$AddIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetIncomesCopyWith<$Res> {
  factory _$$GetIncomesCopyWith(
          _$GetIncomes value, $Res Function(_$GetIncomes) then) =
      __$$GetIncomesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIncomesCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$GetIncomes>
    implements _$$GetIncomesCopyWith<$Res> {
  __$$GetIncomesCopyWithImpl(
      _$GetIncomes _value, $Res Function(_$GetIncomes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetIncomes implements GetIncomes {
  const _$GetIncomes();

  @override
  String toString() {
    return 'IncomeEvent.getIncomes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetIncomes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeModel income) addIncome,
    required TResult Function() getIncomes,
    required TResult Function(IncomeModel income) updateIncome,
    required TResult Function(String incomeId) deleteIncome,
  }) {
    return getIncomes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeModel income)? addIncome,
    TResult? Function()? getIncomes,
    TResult? Function(IncomeModel income)? updateIncome,
    TResult? Function(String incomeId)? deleteIncome,
  }) {
    return getIncomes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeModel income)? addIncome,
    TResult Function()? getIncomes,
    TResult Function(IncomeModel income)? updateIncome,
    TResult Function(String incomeId)? deleteIncome,
    required TResult orElse(),
  }) {
    if (getIncomes != null) {
      return getIncomes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(GetIncomes value) getIncomes,
    required TResult Function(UpdateIncome value) updateIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
  }) {
    return getIncomes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(GetIncomes value)? getIncomes,
    TResult? Function(UpdateIncome value)? updateIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
  }) {
    return getIncomes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(GetIncomes value)? getIncomes,
    TResult Function(UpdateIncome value)? updateIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    required TResult orElse(),
  }) {
    if (getIncomes != null) {
      return getIncomes(this);
    }
    return orElse();
  }
}

abstract class GetIncomes implements IncomeEvent {
  const factory GetIncomes() = _$GetIncomes;
}

/// @nodoc
abstract class _$$UpdateIncomeCopyWith<$Res> {
  factory _$$UpdateIncomeCopyWith(
          _$UpdateIncome value, $Res Function(_$UpdateIncome) then) =
      __$$UpdateIncomeCopyWithImpl<$Res>;
  @useResult
  $Res call({IncomeModel income});

  $IncomeModelCopyWith<$Res> get income;
}

/// @nodoc
class __$$UpdateIncomeCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$UpdateIncome>
    implements _$$UpdateIncomeCopyWith<$Res> {
  __$$UpdateIncomeCopyWithImpl(
      _$UpdateIncome _value, $Res Function(_$UpdateIncome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
  }) {
    return _then(_$UpdateIncome(
      null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as IncomeModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IncomeModelCopyWith<$Res> get income {
    return $IncomeModelCopyWith<$Res>(_value.income, (value) {
      return _then(_value.copyWith(income: value));
    });
  }
}

/// @nodoc

class _$UpdateIncome implements UpdateIncome {
  const _$UpdateIncome(this.income);

  @override
  final IncomeModel income;

  @override
  String toString() {
    return 'IncomeEvent.updateIncome(income: $income)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIncome &&
            (identical(other.income, income) || other.income == income));
  }

  @override
  int get hashCode => Object.hash(runtimeType, income);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIncomeCopyWith<_$UpdateIncome> get copyWith =>
      __$$UpdateIncomeCopyWithImpl<_$UpdateIncome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeModel income) addIncome,
    required TResult Function() getIncomes,
    required TResult Function(IncomeModel income) updateIncome,
    required TResult Function(String incomeId) deleteIncome,
  }) {
    return updateIncome(income);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeModel income)? addIncome,
    TResult? Function()? getIncomes,
    TResult? Function(IncomeModel income)? updateIncome,
    TResult? Function(String incomeId)? deleteIncome,
  }) {
    return updateIncome?.call(income);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeModel income)? addIncome,
    TResult Function()? getIncomes,
    TResult Function(IncomeModel income)? updateIncome,
    TResult Function(String incomeId)? deleteIncome,
    required TResult orElse(),
  }) {
    if (updateIncome != null) {
      return updateIncome(income);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(GetIncomes value) getIncomes,
    required TResult Function(UpdateIncome value) updateIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
  }) {
    return updateIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(GetIncomes value)? getIncomes,
    TResult? Function(UpdateIncome value)? updateIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
  }) {
    return updateIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(GetIncomes value)? getIncomes,
    TResult Function(UpdateIncome value)? updateIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    required TResult orElse(),
  }) {
    if (updateIncome != null) {
      return updateIncome(this);
    }
    return orElse();
  }
}

abstract class UpdateIncome implements IncomeEvent {
  const factory UpdateIncome(final IncomeModel income) = _$UpdateIncome;

  IncomeModel get income;
  @JsonKey(ignore: true)
  _$$UpdateIncomeCopyWith<_$UpdateIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteIncomeCopyWith<$Res> {
  factory _$$DeleteIncomeCopyWith(
          _$DeleteIncome value, $Res Function(_$DeleteIncome) then) =
      __$$DeleteIncomeCopyWithImpl<$Res>;
  @useResult
  $Res call({String incomeId});
}

/// @nodoc
class __$$DeleteIncomeCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$DeleteIncome>
    implements _$$DeleteIncomeCopyWith<$Res> {
  __$$DeleteIncomeCopyWithImpl(
      _$DeleteIncome _value, $Res Function(_$DeleteIncome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomeId = null,
  }) {
    return _then(_$DeleteIncome(
      null == incomeId
          ? _value.incomeId
          : incomeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteIncome implements DeleteIncome {
  const _$DeleteIncome(this.incomeId);

  @override
  final String incomeId;

  @override
  String toString() {
    return 'IncomeEvent.deleteIncome(incomeId: $incomeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteIncome &&
            (identical(other.incomeId, incomeId) ||
                other.incomeId == incomeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incomeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteIncomeCopyWith<_$DeleteIncome> get copyWith =>
      __$$DeleteIncomeCopyWithImpl<_$DeleteIncome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeModel income) addIncome,
    required TResult Function() getIncomes,
    required TResult Function(IncomeModel income) updateIncome,
    required TResult Function(String incomeId) deleteIncome,
  }) {
    return deleteIncome(incomeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeModel income)? addIncome,
    TResult? Function()? getIncomes,
    TResult? Function(IncomeModel income)? updateIncome,
    TResult? Function(String incomeId)? deleteIncome,
  }) {
    return deleteIncome?.call(incomeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeModel income)? addIncome,
    TResult Function()? getIncomes,
    TResult Function(IncomeModel income)? updateIncome,
    TResult Function(String incomeId)? deleteIncome,
    required TResult orElse(),
  }) {
    if (deleteIncome != null) {
      return deleteIncome(incomeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(GetIncomes value) getIncomes,
    required TResult Function(UpdateIncome value) updateIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
  }) {
    return deleteIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(GetIncomes value)? getIncomes,
    TResult? Function(UpdateIncome value)? updateIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
  }) {
    return deleteIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(GetIncomes value)? getIncomes,
    TResult Function(UpdateIncome value)? updateIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    required TResult orElse(),
  }) {
    if (deleteIncome != null) {
      return deleteIncome(this);
    }
    return orElse();
  }
}

abstract class DeleteIncome implements IncomeEvent {
  const factory DeleteIncome(final String incomeId) = _$DeleteIncome;

  String get incomeId;
  @JsonKey(ignore: true)
  _$$DeleteIncomeCopyWith<_$DeleteIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IncomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<IncomeModel> incomes) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<IncomeModel> incomes)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<IncomeModel> incomes)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeStateCopyWith<$Res> {
  factory $IncomeStateCopyWith(
          IncomeState value, $Res Function(IncomeState) then) =
      _$IncomeStateCopyWithImpl<$Res, IncomeState>;
}

/// @nodoc
class _$IncomeStateCopyWithImpl<$Res, $Val extends IncomeState>
    implements $IncomeStateCopyWith<$Res> {
  _$IncomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'IncomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<IncomeModel> incomes) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<IncomeModel> incomes)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<IncomeModel> incomes)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IncomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'IncomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<IncomeModel> incomes) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<IncomeModel> incomes)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<IncomeModel> incomes)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements IncomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IncomeModel> incomes});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomes = null,
  }) {
    return _then(_$_Success(
      null == incomes
          ? _value._incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as List<IncomeModel>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final List<IncomeModel> incomes) : _incomes = incomes;

  final List<IncomeModel> _incomes;
  @override
  List<IncomeModel> get incomes {
    if (_incomes is EqualUnmodifiableListView) return _incomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomes);
  }

  @override
  String toString() {
    return 'IncomeState.success(incomes: $incomes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._incomes, _incomes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_incomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<IncomeModel> incomes) success,
    required TResult Function(String message) error,
  }) {
    return success(incomes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<IncomeModel> incomes)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(incomes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<IncomeModel> incomes)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(incomes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements IncomeState {
  const factory _Success(final List<IncomeModel> incomes) = _$_Success;

  List<IncomeModel> get incomes;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'IncomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<IncomeModel> incomes) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<IncomeModel> incomes)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<IncomeModel> incomes)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements IncomeState {
  const factory _Error(final String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

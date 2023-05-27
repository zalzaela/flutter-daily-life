part of 'income_bloc.dart';

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState.initial() = _Initial;
  const factory IncomeState.loading() = _Loading;
  const factory IncomeState.success(List<IncomeModel> incomes, bool isLoadmore) = _Success;
  const factory IncomeState.error(String message) = _Error;
}

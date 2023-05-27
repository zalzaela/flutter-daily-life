part of 'income_bloc.dart';

@freezed
class IncomeEvent with _$IncomeEvent {
  const factory IncomeEvent.addIncome(IncomeModel income) = AddIncome;
  const factory IncomeEvent.getIncomes() = GetIncomes;
  const factory IncomeEvent.getNextPage() = GetNextPage;
  const factory IncomeEvent.updateIncome(IncomeModel income) = UpdateIncome;
  const factory IncomeEvent.deleteIncome(String incomeId) = DeleteIncome;
}

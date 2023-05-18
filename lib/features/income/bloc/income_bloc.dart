import 'package:bloc/bloc.dart';
import 'package:flutter_daily_life/features/income/data/models/income_model.dart';
import 'package:flutter_daily_life/features/income/data/repositories/income_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_event.dart';
part 'income_state.dart';
part 'income_bloc.freezed.dart';

class IncomeBloc extends Bloc<IncomeEvent, IncomeState> {
  final IncomeRepository incomeRepository;

  IncomeBloc({required this.incomeRepository})
      : super(const IncomeState.initial()) {
    on<AddIncome>((event, emit) async {
      emit(const IncomeState.loading());
      try {
        await incomeRepository.addIncome(event.income);
        final incomes = await incomeRepository.getIncomes();
        emit(IncomeState.success(incomes));
      } catch (e) {
        emit(const IncomeState.error('Failed to add income'));
      }
    });

    on<GetIncomes>((event, emit) async {
      emit(const IncomeState.loading());
      try {
        final incomes = await incomeRepository.getIncomes();
        emit(IncomeState.success(incomes));
      } catch (e) {
        emit(const IncomeState.error('Failed to get incomes'));
      }
    });

    on<UpdateIncome>((event, emit) async {
      emit(const IncomeState.loading());
      try {
        await incomeRepository.updateIncome(event.income);
        final incomes = await incomeRepository.getIncomes();
        emit(IncomeState.success(incomes));
      } catch (e) {
        emit(const IncomeState.error('Failed to update income'));
      }
    });

    on<DeleteIncome>((event, emit) async {
      emit(const IncomeState.loading());
      try {
        await incomeRepository.deleteIncome(event.incomeId);
        final incomes = await incomeRepository.getIncomes();
        emit(IncomeState.success(incomes));
      } catch (e) {
        emit(const IncomeState.error('Failed to delete income'));
      }
    });
  }
}
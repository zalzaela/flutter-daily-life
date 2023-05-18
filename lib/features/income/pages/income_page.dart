import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_daily_life/features/income/bloc/income_bloc.dart';
import 'package:flutter_daily_life/features/income/data/models/income_model.dart';
import 'package:flutter_daily_life/features/income/pages/income_form.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class IncomePage extends StatelessWidget {
  const IncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final incomeBloc = BlocProvider.of<IncomeBloc>(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Income",
      ),
      body: BlocBuilder<IncomeBloc, IncomeState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              incomeBloc.add(const IncomeEvent.getIncomes());
              return buildInitial();
            },
            loading: () => const BuildStateLoading(),
            success: (incomes) => buildSuccess(incomes),
            error: (message) => BuildStateError(message: message),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const IncomeFormPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildInitial() {
    return const Center(
      child: Text('Initial State'),
    );
  }

  Widget buildSuccess(List<IncomeModel> incomes) {
    return (incomes.isNotEmpty)
        ? ListView.builder(
            itemCount: incomes.length,
            itemBuilder: (context, index) {
              final income = incomes[index];
              String subs =
                  "id: ${income.id},\ntitle: ${income.title},\namount: ${income.amount},\ntimestamp: ${DateFormatHelper.readableDateTime(income.timestamp.toDate())},\nstatus: ${income.status}";
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          IncomeFormPage(initialIncome: income),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(income.title),
                  subtitle: Text(subs),
                ),
              );
            },
          )
        : const BuildStateEmpty(message: "Data Empty");
  }
}

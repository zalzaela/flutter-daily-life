import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_daily_life/features/income/bloc/income_bloc.dart';
import 'package:flutter_daily_life/features/income/data/models/income_model.dart';
import 'package:flutter_daily_life/features/income/pages/income_form.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class IncomePage extends StatefulWidget {
  const IncomePage({super.key});

  @override
  State<IncomePage> createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  final ScrollController _scrollController = ScrollController();

  late IncomeBloc incomeBloc;

  late bool _isLoadmore;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    incomeBloc = BlocProvider.of<IncomeBloc>(context);
    incomeBloc.add(const IncomeEvent.getIncomes());
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange &&
        _isLoadmore) {
      incomeBloc.add(const IncomeEvent.getNextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeBloc, IncomeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            incomeBloc.add(const IncomeEvent.getIncomes());
            return buildInitial();
          },
          loading: () => const BuildStateLoading(),
          success: (incomes, isLoadmore) {
            _isLoadmore = isLoadmore;
            return buildSuccess(incomes, _scrollController, isLoadmore);
          },
          error: (message) => BuildStateError(message: message),
        );
      },
    );
  }

  Widget buildInitial() {
    return const Center(
      child: Text('Initial State'),
    );
  }

  Widget buildSuccess(List<IncomeModel> incomes,
      ScrollController scrollController, bool isLoadmore) {
    return (incomes.isNotEmpty)
        ? ListView.builder(
            itemCount: incomes.length + 1,
            controller: scrollController,
            itemBuilder: (context, index) {
              if (index == incomes.length) {
                return (isLoadmore)
                    ? const Column(
                        children: [BuildStateLoading(), SizedBox(height: 5.0)],
                      )
                    : const SizedBox.shrink();
              } else {
                final income = incomes[index];
                final datetime = DateFormatHelper.readableDateTime(
                    income.timestamp.toDate());
                final amount =
                    CurrencyIdrInputFormatter.convertToIdr(income.amount, 0);
                // log.d(incomes.first.toString());
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
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: (incomes.length != index) ? 1 : 0),
                    color: Colors.blue[50],
                    child: ListTile(
                      title: Text(income.title),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(income.category),
                          Column(
                            children: [
                              Text(datetime, style: const TextStyle(fontSize: 10)),
                              Text(amount),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            },
          )
        : const BuildStateEmpty(message: "Data Empty");
  }
}

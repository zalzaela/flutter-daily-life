import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_daily_life/features/income/bloc/income_bloc.dart';
import 'package:flutter_daily_life/features/income/data/models/income_model.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class IncomeFormPage extends StatefulWidget {
  final IncomeModel? initialIncome;

  const IncomeFormPage({Key? key, this.initialIncome}) : super(key: key);

  @override
  State<IncomeFormPage> createState() => _IncomeFormPageState();
}

class _IncomeFormPageState extends State<IncomeFormPage> {
  late TextEditingController _titleController;
  late TextEditingController _amountController;
  DateTime _selectedDateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _titleController =
        TextEditingController(text: widget.initialIncome?.title ?? '');
    _amountController = TextEditingController(
        text: widget.initialIncome?.amount.toString() ?? '');
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final incomeBloc = BlocProvider.of<IncomeBloc>(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: widget.initialIncome != null ? 'Edit Income' : 'Add Income',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _amountController,
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24.0),
            CustomDateSelector(
              initialDate: widget.initialIncome?.timestamp,
              onDateTimeSelected: (value) {
                if (value != null) {
                  setState(() {
                    _selectedDateTime = value;
                  });
                }
              },
              backgroundColor: Colors.green,
              textColor: Colors.white,
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  text: 'Save',
                  onPressed: () async {
                    final title = _titleController.text.trim();
                    final amount =
                        int.tryParse(_amountController.text.trim()) ?? 0;

                    if (title.isNotEmpty && amount > 0) {
                      final income = IncomeModel(
                        id: widget.initialIncome?.id ?? '',
                        title: title,
                        amount: amount,
                        timestamp: Timestamp.fromDate(_selectedDateTime),
                      );

                      if (widget.initialIncome != null) {
                        incomeBloc.add(IncomeEvent.updateIncome(income));
                      } else {
                        incomeBloc.add(IncomeEvent.addIncome(income));
                      }

                      Navigator.of(context).pop();
                    }
                  },
                  textColor: Colors.white,
                  backgroundColor: Colors.blue,
                  textSize: 16.0,
                  textWeight: FontWeight.bold,
                ),
                const SizedBox(width: 15.0),
                if (widget.initialIncome != null)
                  CustomButton(
                    text: 'Delete',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomConfirmationDialog(
                            title: 'Confirmation',
                            content: 'Are you sure?',
                            yesText: 'Yes',
                            noText: 'No',
                            onYesSelected: () {
                              incomeBloc.add(IncomeEvent.deleteIncome(
                                  widget.initialIncome!.id));
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      );
                    },
                    textColor: Colors.white,
                    backgroundColor: Colors.redAccent,
                    textSize: 16.0,
                    textWeight: FontWeight.bold,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

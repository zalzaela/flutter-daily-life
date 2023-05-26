import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_daily_life/features/income/bloc/income_bloc.dart';
import 'package:flutter_daily_life/features/income/data/models/income_model.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';
import 'package:flutter/services.dart';

class IncomeFormPage extends StatefulWidget {
  final IncomeModel? initialIncome;

  const IncomeFormPage({Key? key, this.initialIncome}) : super(key: key);

  @override
  State<IncomeFormPage> createState() => _IncomeFormPageState();
}

class _IncomeFormPageState extends State<IncomeFormPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  DateTime _selectedDateTime = DateTime.now();
  String _selectedCategory = 'salary'; // Default category
  String _selectedAccount = 'cash'; // Default account

  @override
  void initState() {
    initValue();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void initValue() {
    if (widget.initialIncome != null) {
      setState(() {
        _titleController.text = widget.initialIncome!.title;
        _notesController.text = widget.initialIncome!.notes;
        _amountController.text = CurrencyIdrInputFormatter.convertToIdr(
            widget.initialIncome!.amount, 0);

        _selectedCategory = widget.initialIncome!.category;
        _selectedAccount = widget.initialIncome!.account;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final incomeBloc = BlocProvider.of<IncomeBloc>(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: widget.initialIncome != null ? 'Edit Income' : 'Add Income',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                controller: _titleController,
                labelText: 'Title',
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: _amountController,
                labelText: 'Amount',
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CurrencyIdrInputFormatter(),
                ],
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
              CustomDropdown(
                labelText: 'Category',
                selectedValue: _selectedCategory,
                onChanged: (newValue) {
                  setState(() {
                    _selectedCategory = newValue!;
                  });
                },
                dropdownItems: const [
                  'salary',
                  'allowance',
                  'petty cash',
                  'bonus',
                  'other',
                ],
              ),
              const SizedBox(height: 24.0),
              CustomDropdown(
                labelText: 'Accounts',
                selectedValue: _selectedAccount,
                onChanged: (newValue) {
                  setState(() {
                    _selectedAccount = newValue!;
                  });
                },
                dropdownItems: const [
                  'cash',
                  'accounts',
                  'card',
                ],
              ),
              const SizedBox(height: 24.0),
              CustomTextField(
                controller: _notesController,
                labelText: 'Notes',
                minLines: 3,
                maxLines: 5,
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: 'Save',
                    onPressed: () async {
                      final title = _titleController.text.trim();
                      final notes = _notesController.text.trim();
                      final amount = int.tryParse(_amountController.text
                              .replaceAll("Rp ", "")
                              .replaceAll(".", "")
                              .trim()) ??
                          0;

                      if (title.isNotEmpty && amount > 0) {
                        final income = IncomeModel(
                          id: widget.initialIncome?.id ?? '',
                          title: title,
                          amount: amount,
                          category: _selectedCategory,
                          account: _selectedAccount,
                          notes: notes,
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
      ),
    );
  }
}

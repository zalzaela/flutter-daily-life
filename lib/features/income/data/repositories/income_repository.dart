import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_daily_life/features/income/data/models/income_model.dart';
// import 'package:flutter_daily_life/shared/utils/utils.dart';

class IncomeRepository {
  final CollectionReference _incomeCollection =
      FirebaseFirestore.instance.collection('incomes');

  Future<void> addIncome(IncomeModel income) async {
    final incomeMap = income.toJson();
    incomeMap.removeWhere((key, value) => key == "id");
    await _incomeCollection.add(incomeMap);
  }

  Future<List<IncomeModel>> getIncomes() async {
    final snapshot = await _incomeCollection.limit(20).get();
    return snapshot.docs
        .map((doc) => IncomeModel.fromDocumentSnapshot(doc))
        .toList();
  }

  Future<void> updateIncome(IncomeModel income) async {
    final incomeMap = income.toJson();
    incomeMap.removeWhere((key, value) => key == "id");
    final incomeDoc = _incomeCollection.doc(income.id);
    await incomeDoc.update(incomeMap);
  }

  Future<void> deleteIncome(String incomeId) async {
    final incomeDoc = _incomeCollection.doc(incomeId);
    await incomeDoc.delete();
  }
}

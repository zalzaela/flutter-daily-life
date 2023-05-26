import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_model.freezed.dart';
part 'income_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class IncomeModel with _$IncomeModel {
  @TimestampConverter()
  const factory IncomeModel({
    required String id,
    required String title,
    required String category,
    required String account,
    required String notes,
    required int amount,
    required Timestamp timestamp,
    @Default(true) bool status,
  }) = _InomeModel;

  factory IncomeModel.fromJson(Map<String, dynamic> json) =>
      _$IncomeModelFromJson(json);

  factory IncomeModel.fromDocumentSnapshot(DocumentSnapshot snapshot) {
    return IncomeModel(
      id: snapshot.id,
      title: snapshot.get('title') as String,
      category: snapshot.get('category') as String,
      account: snapshot.get('account') as String,
      notes: snapshot.get('notes') as String,
      amount: snapshot.get('amount') as int,
      timestamp:
          const TimestampConverter().fromJson(snapshot.get('timestamp') as int),
      status: snapshot.get('status') as bool? ?? true,
    );
  }
}

class TimestampConverter implements JsonConverter<Timestamp, int> {
  const TimestampConverter();

  @override
  Timestamp fromJson(int json) => Timestamp.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(Timestamp object) => object.millisecondsSinceEpoch;
}

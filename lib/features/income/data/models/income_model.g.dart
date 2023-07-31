// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InomeModel _$$_InomeModelFromJson(Map<String, dynamic> json) =>
    _$_InomeModel(
      id: json['id'] as String,
      title: json['title'] as String,
      category: json['category'] as String,
      account: json['account'] as String,
      notes: json['notes'] as String,
      amount: json['amount'] as int,
      timestamp: const TimestampConverter().fromJson(json['timestamp'] as int),
      status: json['status'] as bool? ?? true,
    );

Map<String, dynamic> _$$_InomeModelToJson(_$_InomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'account': instance.account,
      'notes': instance.notes,
      'amount': instance.amount,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
      'status': instance.status,
    };
